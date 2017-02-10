package gvr.c;

@:include('linc_gvr.h')
@:native('gvr_buffer_viewport_list')
extern private class GvrBufferViewportList {}
typedef BufferViewportList = cpp.Pointer<GvrBufferViewportList>;