// Auto-generated. Do not edit!

// (in-package ur_control.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RG2Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_width = null;
    }
    else {
      if (initObj.hasOwnProperty('target_width')) {
        this.target_width = initObj.target_width
      }
      else {
        this.target_width = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RG2Request
    // Serialize message field [target_width]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.target_width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RG2Request
    let len;
    let data = new RG2Request(null);
    // Deserialize message field [target_width]
    data.target_width = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur_control/RG2Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c47b5151a9d2cd1addabbbc4d278908';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    std_msgs/Float64 target_width
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RG2Request(null);
    if (msg.target_width !== undefined) {
      resolved.target_width = std_msgs.msg.Float64.Resolve(msg.target_width)
    }
    else {
      resolved.target_width = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

class RG2Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_width = null;
    }
    else {
      if (initObj.hasOwnProperty('current_width')) {
        this.current_width = initObj.current_width
      }
      else {
        this.current_width = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RG2Response
    // Serialize message field [current_width]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.current_width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RG2Response
    let len;
    let data = new RG2Response(null);
    // Deserialize message field [current_width]
    data.current_width = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur_control/RG2Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc6487a02ad2aa61e0009f990c2fb8e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float64 current_width
    
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RG2Response(null);
    if (msg.current_width !== undefined) {
      resolved.current_width = std_msgs.msg.Float64.Resolve(msg.current_width)
    }
    else {
      resolved.current_width = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = {
  Request: RG2Request,
  Response: RG2Response,
  md5sum() { return 'e9f43d43d0606566dbbf901fbd3b24a0'; },
  datatype() { return 'ur_control/RG2'; }
};
