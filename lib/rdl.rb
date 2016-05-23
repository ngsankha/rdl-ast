require 'delegate'
require 'digest'
require 'set'
require 'require_all'
require 'parser/current'

module RDL
end

require_relative 'rdl/config.rb'
def RDL.config
  yield(RDL::Config.instance)
end

# Hash from class name (String) to method name (Symbol) to Hash from
# :pre to array of precondition contracts
# :post to array of postcondition contracts
# :type to array of types
# :source_location to [filename, linenumber] location of most recent definition
# :typecheck - boolean that is true if method should be statically type checked
# class names are strings (because they need to be manipulated in case they include ::)
#  (class names may have Util.add_singleton_marker applied to them to indicate they're singleton classes.)
# method names are symbols
$__rdl_meth_info = Hash.new

# Map from full_method_name to number of times called when wrapped
$__rdl_wrapped_calls = Hash.new 0

# Hash from class name to array of symbols that are the class's type parameters
$__rdl_type_params = Hash.new

# Hash from class name to method name to its alias method name
# class names are strings
# method names are symbols
$__rdl_aliases = Hash.new

# Set of [class, method] pairs to wrap.
# class is a string
# method is a symbol
$__rdl_to_wrap = Set.new

# Same as $__rdl_to_wrap, but records [class, method] pairs to type check when they're defined
$__rdl_to_typecheck_now = Set.new

# List of contracts that should be applied to the next method definition
$__rdl_deferred = []

# Create switches to control whether wrapping happens and whether
# contracts are checked. These need to be created before rdl/wrap.rb
# is loaded.
require_rel 'rdl/switch.rb'
$__rdl_wrap_switch = RDL::Switch.new
$__rdl_contract_switch = RDL::Switch.new

require_rel 'rdl/types/*.rb'
require_rel 'rdl/contracts/*.rb'
require_rel 'rdl/util.rb'
require_rel 'rdl/wrap.rb'
require_rel 'rdl/query.rb'
require_rel 'rdl/typecheck.rb'
#require_rel 'rdl/stats.rb'

$__rdl_parser = RDL::Type::Parser.new

# Map from file names to [digest, cache] where 2nd elt maps
#  :ast to the AST
#  :line_defs maps linenumber to AST for def at that line
$__rdl_ruby_parser_cache = Hash.new

# Hash from special type names to their values
$__rdl_special_types = {'%any' => RDL::Type::TopType.new,
                        '%bool' => RDL::Type::UnionType.new(RDL::Type::NominalType.new(TrueClass),
                                                            RDL::Type::NominalType.new(FalseClass)) }
