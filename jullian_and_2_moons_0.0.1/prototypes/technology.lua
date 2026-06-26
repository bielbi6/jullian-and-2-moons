-- ==========================================
-- PESQUISA/TECNOLOGIA PARA O PLANETA JULLIAN
-- ==========================================
data:extend({
  {
    type = "technology",
    name = "planet-discovery-jullian",
    icon = "__jullian_and_2_moons__/graphics/icons/jullian.png", -- Usa o ícone do teu planeta
    icon_size = 64,
    essential = true,
    localised_description = {"technology-description.planet-discovery-jullian"},
    
    -- O que é necessário para poder pesquisar este planeta
    prerequisites = {
      "space-science-pack", -- Exige ciência espacial básica
      "planet-discovery-aquilo" -- Exige ter descoberto Aquilo primeiro (já que a rota sai de lá)
    },
    
    -- Custo da pesquisa (Quantidade e tipos de poções/cartões)
    unit = {
      count = 1000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"promethium-science-pack", 1} -- Como ele está depois de Aquilo, exige ciência avançada
      },
      time = 60
    },
    
    -- EFEITO: Desbloqueia o planeta no mapa para que a tua plataforma possa viajar para lá
    effects = {
      {
        type = "unlock-space-location",
        location = "jullian"
      }
    }
  }
})