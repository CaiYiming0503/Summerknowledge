sdk_inc(tf_core)
sdk_inc(third_party/flatbuffers/include)
sdk_inc(third_party/gemmlowp)
sdk_inc(third_party/ruy)
sdk_inc(third_party/kissfft)
add_subdirectory(tf_core/tensorflow/lite)
add_subdirectory(third_party/kissfft)
# sdk_inc(tensorflow/lite/c)
# sdk_inc(tensorflow/lite/core/api)
# sdk_inc(tensorflow/lite/experimental/microfrontend/lib)
# sdk_inc(tensorflow/lite/kernels)
# sdk_inc(tensorflow/lite/kernels/internal)
# sdk_inc(tensorflow/lite/kernels/internal/optimized)
# sdk_inc(tensorflow/lite/kernels/internal/reference/integer_ops)
# sdk_inc(tensorflow/lite/micro)
# sdk_inc(tensorflow/lite/micro/kernels)
# sdk_inc(tensorflow/lite/micro/memory_planner)
# sdk_inc(tensorflow/lite/micro/models)
# sdk_inc(tensorflow/lite/schema)