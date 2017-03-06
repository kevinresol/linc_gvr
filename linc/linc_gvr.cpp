//hxcpp include should be first
#include <hxcpp.h>
#include <vector>
#include "./linc_gvr.h"

namespace linc {

    namespace gvr {
        
        gvr_swap_chain* swap_chain_create(gvr_context* gvr, int size) {
            std::vector<const gvr_buffer_spec*> specs;
            gvr_buffer_spec *spec = gvr_buffer_spec_create(gvr);
            gvr_sizei bufferSize = gvr_buffer_spec_get_size(spec);
            if(bufferSize.width < bufferSize.height) {
                int tmp = bufferSize.width;
                bufferSize.width = bufferSize.height;
                bufferSize.height = tmp;
            }
            gvr_buffer_spec_set_size(spec, bufferSize);
            specs.push_back(spec);
            gvr_swap_chain* c = gvr_swap_chain_create(gvr, specs.data(), (int32_t) size);
            return c;
        }
        
        void set_surface_size(gvr_context* gvr, int width, int height) {
            gvr_sizei size;
            size.width = width;
            size.height = height;
            gvr_set_surface_size(gvr, size);
        }
        
        void swap_chain_resize_buffer(gvr_swap_chain* swap_chain, int32_t index, int width, int height) {
            gvr_sizei size;
            size.width = width;
            size.height = height;
            gvr_swap_chain_resize_buffer(swap_chain, index, size);
        }

    } //gvr namespace

} //linc
