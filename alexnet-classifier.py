
import rospy
from sensor_msgs.msg import Image
import cv2
import numpy as np
import os
import sys
from cv_bridge import CvBridge, CvBridgeError

from torchvision import models
import torch
from PIL import Image as pilImage

RGB_image = None
#alexnet = models.alexnet(pretrained=True)
resnet = models.resnet101(pretrained=True)

from torchvision import transforms
transform = transforms.Compose([            #[1]
 transforms.Resize(256),                    #[2]
 transforms.CenterCrop(224),                #[3]
 transforms.ToTensor(),                     #[4]
 transforms.Normalize(                      #[5]
 mean=[0.485, 0.456, 0.406],                #[6]
 std=[0.229, 0.224, 0.225]                  #[7]
 )])

bridge = CvBridge()

cv_image = None

def callbackRGB(data):
	global RGB_image
	RGB_image = bridge.imgmsg_to_cv2(data, data.encoding)

if __name__ == '__main__':
	rospy.Subscriber('/kinect2/qhd/image_color', Image, callbackRGB)
	rospy.init_node('alexnet_classifier_node')
	rate = 100
	r = rospy.Rate(rate)
	while RGB_image is None:
		r.sleep()
	resnet.eval()
	#alexnet.eval()
	#rospy.Subscriber('/rrbot/camera1/image_raw', Image, callback)
	with open('/home/cobdor/bogertws/imagenet_classes.txt') as f:
		classes = [line.strip() for line in f.readlines()]

	while True:
	#try:
		RGB_image = pilImage.fromarray(RGB_image)
		img_t = transform(RGB_image)
		batch_t = torch.unsqueeze(img_t, 0)
		#out = alexnet(batch_t)
		out = resnet(batch_t)
		#print(out.shape)
		#_, index = torch.max(out, 1)
		#percentage = torch.nn.functional.softmax(out, dim=1)[0] * 100
		#print(classes[index[0]], percentage[index[0]].item())

		_, indices = torch.sort(out, descending=True)
		percentage = torch.nn.functional.softmax(out, dim=1)[0] * 100
		print[(classes[idx], percentage[idx].item()) for idx in indices[0][:5]]
		cv2.imshow("Color Kinect", RGB_image)
	#except:
	#	pass

		if cv2.waitKey(1) == 27:
			break  # esc to quit
	cv2.destroyAllWindows()
