
#include "svdpi.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifndef _VC_TYPES_
#define _VC_TYPES_
/* common definitions shared with DirectC.h */

typedef unsigned int U;
typedef unsigned char UB;
typedef unsigned char scalar;
typedef struct { U c; U d;} vec32;

#define scalar_0 0
#define scalar_1 1
#define scalar_z 2
#define scalar_x 3

extern long long int ConvUP2LLI(U* a);
extern void ConvLLI2UP(long long int a1, U* a2);
extern long long int GetLLIresult();
extern void StoreLLIresult(const unsigned int* data);
typedef struct VeriC_Descriptor *vc_handle;

#ifndef SV_3_COMPATIBILITY
#define SV_STRING const char*
#else
#define SV_STRING char*
#endif

#endif /* _VC_TYPES_ */


 extern void rebuild_text(int txt, int i);

 extern void rebuild_key(int ky, int i);

 extern void generate_ciphertext();

 extern int get_ciphertext(int i);

 extern int get_text(int i);

 extern int get_key(int i);

 extern void read_text();

 extern void rearrange_text();

 extern void rearrange_key();

 extern void rearrange_cipher();

 extern void send_ld_rst(int i, int j);

 extern void send_k_ld_rst(int i, int j);

 extern int get_done();

 extern int get_status();

 extern int get_k_done();

 extern int get_k_status();

 extern void rebuild_k_text(int txt, int i);

 extern void rebuild_k_key(int ky, int i);

 extern void generate_k_ciphertext();

 extern void rearrange_k_text();

 extern void rearrange_k_key();

 extern void rearrange_k_cipher();

#ifdef __cplusplus
}
#endif

