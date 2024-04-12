// Auto-generated. Do not edit!

// (in-package tp_ros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class mvmt_finiRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mvmt_finiRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mvmt_finiRequest
    let len;
    let data = new mvmt_finiRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tp_ros/mvmt_finiRequest';
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
    const resolved = new mvmt_finiRequest(null);
    return resolved;
    }
};

class mvmt_finiResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isaction = null;
    }
    else {
      if (initObj.hasOwnProperty('isaction')) {
        this.isaction = initObj.isaction
      }
      else {
        this.isaction = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mvmt_finiResponse
    // Serialize message field [isaction]
    bufferOffset = _serializer.bool(obj.isaction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mvmt_finiResponse
    let len;
    let data = new mvmt_finiResponse(null);
    // Deserialize message field [isaction]
    data.isaction = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tp_ros/mvmt_finiResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03440024cfd8b4ba675d5d1a23278c8b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isaction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mvmt_finiResponse(null);
    if (msg.isaction !== undefined) {
      resolved.isaction = msg.isaction;
    }
    else {
      resolved.isaction = false
    }

    return resolved;
    }
};

module.exports = {
  Request: mvmt_finiRequest,
  Response: mvmt_finiResponse,
  md5sum() { return '03440024cfd8b4ba675d5d1a23278c8b'; },
  datatype() { return 'tp_ros/mvmt_fini'; }
};
