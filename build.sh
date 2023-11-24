/usr/local/lib/bazel/bin/bazel-5.1.1-linux-x86_64 build  --subcommands   --cxxopt="-D_GLIBCXX_USE_CXX11_ABI=1" --config=opt   //tensorflow:libtensorflow.so
/usr/local/lib/bazel/bin/bazel-5.1.1-linux-x86_64 build  --subcommands   --cxxopt="-D_GLIBCXX_USE_CXX11_ABI=1" --config=opt   //tensorflow:libtensorflow_cc.so
/usr/local/lib/bazel/bin/bazel-5.1.1-linux-x86_64 build  --subcommands   --cxxopt="-D_GLIBCXX_USE_CXX11_ABI=1" --config=opt   //tensorflow:libtensorflow_framework.so
/usr/local/lib/bazel/bin/bazel-5.1.1-linux-x86_64 build  --subcommands   --cxxopt="-D_GLIBCXX_USE_CXX11_ABI=1" --config=opt   //tensorflow:install_headers
