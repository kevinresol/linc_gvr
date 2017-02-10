package gvr.c;

@:include('linc_gvr.h')
@:native('gvr_buffer_viewport')
extern private class GvrBufferViewport {}
typedef BufferViewport = cpp.Pointer<GvrBufferViewport>;