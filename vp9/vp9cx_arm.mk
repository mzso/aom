##
##  Copyright (c) 2010 The WebM project authors. All Rights Reserved.
##
##  Use of this source code is governed by a BSD-style license
##  that can be found in the LICENSE file in the root of the source
##  tree. An additional intellectual property rights grant can be found
##  in the file PATENTS.  All contributing project authors may
##  be found in the AUTHORS file in the root of the source tree.
##


#VP9_CX_SRCS list is modified according to different platforms.

#File list for arm
# encoder
VP9_CX_SRCS-$(ARCH_ARM)  += encoder/arm/vp9_arm_csystemdependent.c

VP9_CX_SRCS-$(ARCH_ARM)  += encoder/arm/vp9_dct_arm.c
VP9_CX_SRCS-$(ARCH_ARM)  += encoder/arm/vp9_dct_arm.h
VP9_CX_SRCS-$(ARCH_ARM)  += encoder/arm/vp9_encodemb_arm.h
VP9_CX_SRCS-$(ARCH_ARM)  += encoder/arm/vp9_quantize_arm.c
VP9_CX_SRCS-$(ARCH_ARM)  += encoder/arm/vp9_quantize_arm.h
VP9_CX_SRCS-$(ARCH_ARM)  += encoder/arm/vp9_variance_arm.c
VP9_CX_SRCS-$(ARCH_ARM)  += encoder/arm/vp9_variance_arm.h

#File list for armv5te
# encoder
VP9_CX_SRCS-$(HAVE_ARMV5TE) += encoder/arm/vp9_boolhuff_arm.c
VP9_CX_SRCS_REMOVE-$(HAVE_ARMV5TE)  += encoder/vp9_boolhuff.c
VP9_CX_SRCS-$(HAVE_ARMV5TE)  += encoder/arm/armv5te/boolhuff_armv5te$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV5TE)  += encoder/arm/armv5te/vp8_packtokens_armv5$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV5TE)  += encoder/arm/armv5te/vp8_packtokens_mbrow_armv5$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV5TE)  += encoder/arm/armv5te/vp8_packtokens_partitions_armv5$(ASM)

#File list for armv6
# encoder
VP9_CX_SRCS-$(HAVE_ARMV6)  += encoder/arm/armv6/vp8_subtract_armv6$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV6)  += encoder/arm/armv6/vp8_short_fdct4x4_armv6$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV6)  += encoder/arm/armv6/vp8_fast_quantize_b_armv6$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV6)  += encoder/arm/armv6/vp8_sad16x16_armv6$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV6)  += encoder/arm/armv6/vp8_variance16x16_armv6$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV6)  += encoder/arm/armv6/vp8_variance_halfpixvar16x16_h_armv6$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV6)  += encoder/arm/armv6/vp8_variance_halfpixvar16x16_v_armv6$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV6)  += encoder/arm/armv6/vp8_variance_halfpixvar16x16_hv_armv6$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV6)  += encoder/arm/armv6/vp8_mse16x16_armv6$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV6)  += encoder/arm/armv6/vp8_variance8x8_armv6$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV6)  += encoder/arm/armv6/walsh_v6$(ASM)

#File list for neon
# encoder
VP9_CX_SRCS-$(HAVE_ARMV7)  += encoder/arm/neon/fastquantizeb_neon$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV7)  += encoder/arm/neon/vp9_picklpf_arm.c
VP9_CX_SRCS-$(HAVE_ARMV7)  += encoder/arm/neon/sad8_neon$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV7)  += encoder/arm/neon/sad16_neon$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV7)  += encoder/arm/neon/shortfdct_neon$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV7)  += encoder/arm/neon/subtract_neon$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV7)  += encoder/arm/neon/variance_neon$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV7)  += encoder/arm/neon/vp8_mse16x16_neon$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV7)  += encoder/arm/neon/vp8_subpixelvariance8x8_neon$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV7)  += encoder/arm/neon/vp8_subpixelvariance16x16_neon$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV7)  += encoder/arm/neon/vp8_subpixelvariance16x16s_neon$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV7)  += encoder/arm/neon/vp8_memcpy_neon$(ASM)
VP9_CX_SRCS-$(HAVE_ARMV7)  += encoder/arm/neon/vp8_shortwalsh4x4_neon$(ASM)
