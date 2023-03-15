drv_path=$(nix-instantiate hello.nix)
echo "drv_path: $drv_path"
bin_path=$(nix-store -r $drv_path)
echo "bin_path: $bin_path"
runtime_refs=$(nix-store -q --references $bin_path)
echo "runtime_refs: $runtime_refs"


