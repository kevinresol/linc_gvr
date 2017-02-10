package gvr.c;

import cpp.*;

@:include('linc_gvr.h')
@:native('gvr_mat4f')
extern class GvrMat4f {
	// float[4][4]
	var m:RawPointer<RawPointer<Float>>;
}

@:native('::cpp::Struct<gvr_mat4f>')
extern class Mat4f extends GvrMat4f {}
