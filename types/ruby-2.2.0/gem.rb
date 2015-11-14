module Gem
  type 'self.bin_path', '(String name, ?String exec_name, *Gem::Requirement requirements) -> String'
  type 'self.binary_mode', '() -> String'
  type 'self.bindir', '(?String install_dir) -> String'
  type 'self.clear_default_specs', '() -> Hash'
  type 'self.clear_paths', '() -> nil'
  type 'self.config_file', '() -> String'
  type 'self.configuration', '() -> Gem::ConfigFile'
  type 'self.configuration=', '(%any) -> %any' #returns param
  type 'self.datadir', '(String gem_name) -> String or nil'
  type 'self.default_bindir', '() -> String or nil'
  type 'self.default_cert_path', '() -> String or nil'
  type 'self.default_dir', '() -> String or nil'
  type 'self.default_exec_format', '() -> String or nil'
  type 'self.default_key_path', '() -> String or nil'
  type 'self.default_path', '() -> String or nil'
  type 'self.default_rubygems_dirs', '() -> Array<String> or nil'
  type 'self.default_sources', '() -> Array<String> or nil'
  #type 'self.deflate', '() -> String' # Anything with to_s
=begin
  type 'self.detect_gemdeps', '() -> '
  type 'self.dir', '() -> '
  type 'self.done_installing', '() -> '
  type 'self.ensure_gem_subdirectories', '() -> '
  type 'self.find_files', '() -> '
  type 'self.find_unresolved_default_spec', '() -> '
  type 'self.finish_resolve', '() -> '
  type 'self.gunzip', '() -> '
  type 'self.gzip', '() -> '
  type 'self.host', '() -> '
  type 'self.host=', '() -> '
  type 'self.inflate', '() -> '
  type 'self.install', '() -> '
  type 'self.latest_rubygems_version', '() -> '
  type 'self.latest_spec_for', '() -> '
  type 'self.latest_version_for', '() -> '
  type 'self.load_env_plugins', '() -> '
  type 'self.load_path_insert_index', '() -> '
  type 'self.load_plugin_files', '() -> '
  type 'self.load_plugins', '() -> '
  type 'self.load_yaml', '() -> '
  type 'self.location_of_caller', '() -> '
  type 'self.marshal_version', '() -> '
  type 'self.needs', '() -> '
  type 'self.path', '() -> '
  type 'self.path_separator', '() -> '
  type 'self.paths', '() -> '
  type 'self.paths=', '() -> '
  type 'self.platforms', '() -> '
  type 'self.platforms=', '() -> '
  type 'self.post_build', '() -> '
  type 'self.post_install', '() -> '
  type 'self.post_reset', '() -> '
  type 'self.post_uninstall', '() -> '
  type 'self.pre_install', '() -> '
  type 'self.pre_reset', '() -> '
  type 'self.pre_uninstall', '() -> '
  type 'self.prefix', '() -> '
  type 'self.read_binary', '() -> '
  type 'self.refresh', '() -> '
  type 'self.register_default_spec', '() -> '
  type 'self.remove_unresolved_default_spec', '() -> '
  type 'self.ruby', '() -> '
  type 'self.ruby=', '() -> '
  type 'self.ruby_engine', '() -> '
  type 'self.ruby_version', '() -> '
  type 'self.rubygems_version', '() -> '
  type 'self.searcher=', '() -> '
  type 'self.sources', '() -> '
  type 'self.sources=', '() -> '
  type 'self.suffix_pattern', '() -> '
  type 'self.suffixes', '() -> '
  type 'self.time', '() -> '
  type 'self.try_activate', '() -> '
  type 'self.ui', '() -> '
  type 'self.use_paths', '() -> '
  type 'self.user_dir', '() -> '
  type 'self.user_home', '() -> '
  type 'self.win_platform=', '() -> '
  type 'self.win_platform?', '() -> '
=begin
  class Gemspec
    type '<=>', '() -> '
    type '==', '() -> '
    type '_dump', '() -> '
    type 'activate', '() -> '
    type 'activate_dependencies', '() -> '
    type 'activated', '() -> '
    type 'activated=', '() -> '
    type 'activated?', '() -> '
    type 'add_bindir', '() -> '
    type 'add_dependency', '() -> '
    type 'add_dependency_with_type', '() -> '
    type 'add_development_dependency', '() -> '
    type 'add_runtime_dependency', '() -> '
    type 'add_self_to_load_path', '() -> '
    type 'author', '() -> '
    type 'author=', '() -> '
    type 'authors', '() -> '
    type 'authors=', '() -> '
    type 'autorequire', '() -> '
    type 'autorequire=', '() -> '
    type 'bin_dir', '() -> '
    type 'bin_file', '() -> '
    type 'bindir', '() -> '
    type 'bindir=', '() -> '
    type 'build_args', '() -> '
    type 'build_extensions', '() -> '
    type 'build_info_dir', '() -> '
    type 'build_info_file', '() -> '
    type 'bundled_gem_in_old_ruby?', '() -> '
    type 'cache_dir', '() -> '
    type 'cache_file', '() -> '
    type 'cert_chain', '() -> '
    type 'cert_chain=', '() -> '
    type 'check_version_conflict', '() -> '
    type 'conflicts', '() -> '
    type 'date', '() -> '
    type 'date=', '() -> '
    type 'default_executable', '() -> '
    type 'default_executable=', '() -> '
    type 'default_value', '() -> '
    type 'dependencies', '() -> '
    type 'dependent_gems', '() -> '
    type 'dependent_specs', '() -> '
    type 'description', '() -> '
    type 'description=', '() -> '
    type 'development_dependencies', '() -> '
    type 'doc_dir', '() -> '
    type 'email', '() -> '
    type 'email=', '() -> '
    type 'encode_with', '() -> '
    type 'eql?', '() -> '
    type 'executable', '() -> '
    type 'executable=', '() -> '
    type 'executables', '() -> '
    type 'executables=', '() -> '
    type 'extensions', '() -> '
    type 'extensions=', '() -> '
    type 'extra_rdoc_files', '() -> '
    type 'extra_rdoc_files=', '() -> '
    type 'file_name', '() -> '
    type 'files', '() -> '
    type 'files=', '() -> '
    type 'find_all_satisfiers', '() -> '
    type 'find_full_gem_path', '() -> '
    type 'for_cache', '() -> '
    type 'full_name', '() -> '
    type 'gem_build_complete_path', '() -> '
    type 'gem_dir', '() -> '
    type 'has_rdoc', '() -> '
    type 'has_rdoc=', '() -> '
    type 'has_rdoc?', '() -> '
    type 'has_test_suite?', '() -> '
    type 'has_unit_tests?', '() -> '
    type 'hash', '() -> '
    type 'homepage', '() -> '
    type 'homepage=', '() -> '
    type 'init_with', '() -> '
    type 'initialize', '() -> '
    type 'initialize_copy', '() -> '
    type 'inspect', '() -> '
    type 'installed_by_version', '() -> '
    type 'installed_by_version=', '() -> '
    type 'invalidate_memoized_attributes', '() -> '
    type 'lib_dirs_glob', '() -> '
    type 'lib_files', '() -> '
    type 'license', '() -> '
    type 'license=', '() -> '
    type 'licenses', '() -> '
    type 'licenses=', '() -> '
    type 'loaded_from=', '() -> '
    type 'mark_version', '() -> '
    type 'matches_for_glob', '() -> '
    type 'metadata', '() -> '
    type 'metadata=', '() -> '
    type 'method_missing', '() -> '
    type 'missing_extensions?', '() -> '
    type 'name', '() -> '
    type 'name=', '() -> '
    type 'name_tuple', '() -> '
    type 'normalize', '() -> '
    type 'original_name', '() -> '
    type 'original_platform', '() -> '
    type 'original_platform=', '() -> '
    type 'platform', '() -> '
    type 'platform=', '() -> '
    type 'post_install_message', '() -> '
    type 'post_install_message=', '() -> '
    type 'pretty_print', '() -> '
    type 'raise_if_conflicts', '() -> '
    type 'rdoc_options', '() -> '
    type 'rdoc_options=', '() -> '
    type 'require_path', '() -> '
    type 'require_path=', '() -> '
    type 'require_paths=', '() -> '
    type 'required_ruby_version', '() -> '
    type 'required_ruby_version=', '() -> '
    type 'required_rubygems_version', '() -> '
    type 'required_rubygems_version=', '() -> '
    type 'requirements', '() -> '
    type 'requirements=', '() -> '
    type 'reset_nil_attributes_to_default', '() -> '
    type 'respond_to_missing?', '() -> '
    type 'ri_dir', '() -> '
    type 'ruby_code', '() -> '
    type 'rubyforge_project', '() -> '
    type 'rubyforge_project=', '() -> '
    type 'rubygems_version', '() -> '
    type 'rubygems_version=', '() -> '
    type 'runtime_dependencies', '() -> '
    type 'same_attributes?', '() -> '
    type 'satisfies_requirement?', '() -> '
    type 'signing_key', '() -> '
    type 'signing_key=', '() -> '
    type 'sort_obj', '() -> '
    type 'source', '() -> '
    type 'spec_dir', '() -> '
    type 'spec_file', '() -> '
    type 'spec_name', '() -> '
    type 'specification_version', '() -> '
    type 'specification_version=', '() -> '
    type 'stubbed?', '() -> '
    type 'summary', '() -> '
    type 'summary=', '() -> '
    type 'test_file', '() -> '
    type 'test_file=', '() -> '
    type 'test_files', '() -> '
    type 'test_files=', '() -> '
    type 'to_ruby', '() -> '
    type 'to_ruby_for_cache', '() -> '
    type 'to_s', '() -> '
    type 'to_spec', '() -> '
    type 'to_yaml', '() -> '
    type 'traverse', '() -> '
    type 'validate', '() -> '
    type 'validate_dependencies', '() -> '
    type 'validate_permissions', '() -> '
    type 'version', '() -> '
    type 'version=', '() -> '
    type 'warning', '() -> '
    type 'yaml_initialize', '() -> '
  end
=end
end