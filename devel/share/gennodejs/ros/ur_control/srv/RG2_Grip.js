// Auto-generated. Do not edit!

// (in-package ur_control.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RG2_GripRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RG2_GripRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RG2_GripRequest
    let len;
    let data = new RG2_GripRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur_control/RG2_GripRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RG2_GripRequest(null);
    return resolved;
    }
};

class RG2_GripResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gripped = null;
    }
    else {
      if (initObj.hasOwnProperty('gripped')) {
        this.gripped = initObj.gripped
      }
      else {
        this.gripped = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RG2_GripResponse
    // Serialize message field [gripped]
    bufferOffset = _serializer.bool(obj.gripped, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RG2_GripResponse
    let len;
    let data = new RG2_GripResponse(null);
    // Deserialize message field [gripped]
    data.gripped = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ur_control/RG2_GripResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e59cc69aa535dfedb8f29528fe2a1de3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool gripped
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RG2_GripResponse(null);
    if (msg.gripped !== undefined) {
      resolved.gripped = msg.gripped;
    }
    else {
      resolved.gripped = false
    }

    return resolved;
    }
};

module.exports = {
  Request: RG2_GripRequest,
  Response: RG2_GripResponse,
  md5sum() { return 'e59cc69aa535dfedb8f29528fe2a1de3'; },
  datatype() { return 'ur_control/RG2_Grip'; }
};
