require 'stone'

class GlassStone < Stone
  def initialize_new_stone
    super
    start
    run_topaz_command("UserGlobals at: #BootStrapSymbolDictionaryName put: #UserGlobals. System commitTransaction")
    topaz_commands(["input #{gemstone_installation_path}/seaside/topaz/installMonticello.topaz", "commit"])
    run_topaz_command("UserGlobals removeKey: #BootStrapSymbolDictionaryName. System commitTransaction")
  end
end
