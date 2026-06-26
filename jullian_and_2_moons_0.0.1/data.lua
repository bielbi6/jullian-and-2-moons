data:extend({
  -- ==========================================
  -- PLANETA PRINCIPAL: JULLIAN
  -- ==========================================
  {
    type = "planet",
    name = "jullian",
    icon = "__jullian_and_2_moons__/graphics/icons/jullian.png",
    icon_size = 64,
    starmap_icon = "__jullian_and_2_moons__/graphics/starmap/jullian.png",
    starmap_icon_size = 512,
    magnitude = 1.0,
    distance = 35,
    orientation = 0.3, 
    gravity_pull = 10,
    surface_properties = {
      ["pressure"] = 100,
      ["magnetic-field"] = 0,
      ["gravity"] = 10
    },
    asteroid_spawn_definitions = {},

    -- Renderização Avançada do Mapa Estelar (Shader de Planeta)
    starmap_render_properties = {
      surface_texture = "__jullian_and_2_moons__/graphics/starmap/jullian.png",
      normal_texture = "__jullian_and_2_moons__/graphics/starmap/jullian-normal.png",
    }
  },

  -- ==========================================
  -- LUA 1: ISLANDIA (Orbitando Jullian)
  -- ==========================================
  {
    type = "planet",
    name = "islandia",
    icon = "__jullian_and_2_moons__/graphics/icons/islandia.png",
    icon_size = 64,
    starmap_icon = "__jullian_and_2_moons__/graphics/starmap/islandia.png",
    starmap_icon_size = 512,
    magnitude = 0.5,
    
    -- Configuração de Lua Correta
    orbit_of = "jullian",     -- <--- Presa a Jullian
    distance = 3,             -- Distância curta da órbita do planeta pai
    orientation = 0.05,       -- Ângulo orbital inicial
    
    gravity_pull = 5,
    surface_properties = {
      ["pressure"] = 40,
      ["magnetic-field"] = 0,
      ["gravity"] = 5
    },
    asteroid_spawn_definitions = {},
    
    starmap_render_properties = {
      surface_texture = "__jullian_and_2_moons__/graphics/starmap/islandia.png",
      normal_texture = "__jullian_and_2_moons__/graphics/starmap/islandia-cloud-normal.png",
      shadow_persistance = 0.95,
      
      clouds = {
        texture = "__jullian_and_2_moons__/graphics/starmap/islandia_cloud.png",
        normal_texture = "__jullian_and_2_moons__/graphics/starmap/islandia-cloud-normal.png",
        flow_texture = "__jullian_and_2_moons__/graphics/starmap/islandia-cloud-flow.png",
        scale = 1.0,
        speed = 0.015
      }
    }
  },

  -- ==========================================
  -- LUA 2: GRAYSCALE (Orbitando Jullian)
  -- ==========================================
  {
    type = "planet",
    name = "grayscale",
    icon = "__jullian_and_2_moons__/graphics/icons/grayscale.png",
    icon_size = 64,
    starmap_icon = "__jullian_and_2_moons__/graphics/starmap/grayscale.png",
    starmap_icon_size = 512,
    magnitude = 0.4,
    
    -- Configuração de Lua Correta
    orbit_of = "jullian",     -- <--- Presa a Jullian
    distance = 5,             -- Um pouco mais afastada que a Islândia
    orientation = 0.55,       -- Lado oposto para não sobrepor visualmente
    
    gravity_pull = 3,
    surface_properties = {
      ["pressure"] = 10,
      ["magnetic-field"] = 0,
      ["gravity"] = 3
    },
    asteroid_spawn_definitions = {},
    
    starmap_render_properties = {
      surface_texture = "__jullian_and_2_moons__/graphics/starmap/grayscale.png",
      normal_texture = "__jullian_and_2_moons__/graphics/starmap/grayscale-normal.png",
      emission_texture = "__jullian_and_2_moons__/graphics/starmap/grayscale-emission.png",
      shadow_persistance = 0.9,
      
      clouds = {
        texture = "__jullian_and_2_moons__/graphics/starmap/grayscale-cloud.png",
        normal_texture = "__jullian_and_2_moons__/graphics/starmap/grayscale-cloud-normal.png",
        flow_texture = "__jullian_and_2_moons__/graphics/starmap/grayscale-cloud-flow.png",
        scale = 1.0,
        speed = 0.008
      }
    }
  }
})

-- ==========================================
-- CONEXÕES DE ROTAS ESPACIAIS
-- ==========================================
data:extend({
  {
    type = "space-connection",
    name = "aquilo-jullian",
    from = "aquilo",
    to = "jullian",
    length = 15000,
    asteroid_spawn_definitions = {}
  },
  {
    type = "space-connection",
    name = "jullian-islandia",
    from = "jullian",
    to = "islandia",
    length = 3000,
    asteroid_spawn_definitions = {}
  },
  {
    type = "space-connection",
    name = "jullian-grayscale",
    from = "jullian",
    to = "grayscale",
    length = 5000,
    asteroid_spawn_definitions = {}
  }
})