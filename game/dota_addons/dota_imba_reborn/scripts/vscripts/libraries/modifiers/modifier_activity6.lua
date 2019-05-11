modifier_activity6 = class({})

require('libraries/modifiers/animation_code')

function modifier_activity6:OnCreated(keys)
  if not IsServer() then
    self.translate = _CODE_TO_ANIMATION_TRANSLATE[keys.stack_count]
  else
    self.translate = keys.translate
  end
end

function modifier_activity6:GetAttributes()
  return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE --+ MODIFIER_ATTRIBUTE_MULTIPLE
end

function modifier_activity6:IsHidden()
  return true
end

function modifier_activity6:IsDebuff()
  return false
end

function modifier_activity6:IsPurgable()
  return false
end

function modifier_activity6:DeclareFunctions()
  local funcs = {
    MODIFIER_PROPERTY_TRANSLATE_ACTIVITY_MODIFIERS
  }

  return funcs
end

function modifier_activity6:GetActivityTranslationModifiers(...)
  --print('TRANSLATE MODIFIER', IsServer())
  --print(self.translate)
  return self.translate or 0
end

--[[function modifier_activity6:CheckState() 
  local state = {
    [MODIFIER_STATE_UNSELECTABLE] = true,
    [MODIFIER_STATE_INVULNERABLE] = true,
    [MODIFIER_STATE_NOT_ON_MINIMAP] = true,
    [MODIFIER_STATE_NO_HEALTH_BAR] = true,
  }

  return state
end]]
