require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "User with activity logging submodule" do

  # ----------------- PLUGIN CONFIGURATION -----------------------
  describe User, "loaded plugin configuration" do
    before(:all) do
      sorcery_reload!([:activity_logging])
    end
  
    after(:each) do
      User.sorcery_config.reset!
    end
    
    it "should allow configuration option 'last_login_at_attribute_name'" do
      sorcery_model_property_set(:last_login_at_attribute_name, :login_time)
      User.sorcery_config.last_login_at_attribute_name.should equal(:login_time)
    end
    
    it "should allow configuration option 'last_logout_at_attribute_name'" do
      sorcery_model_property_set(:last_logout_at_attribute_name, :logout_time)
      User.sorcery_config.last_logout_at_attribute_name.should equal(:logout_time)
    end
    
    it "should allow configuration option 'last_activity_at_attribute_name'" do
      sorcery_model_property_set(:last_activity_at_attribute_name, :activity_time)
      User.sorcery_config.last_activity_at_attribute_name.should equal(:activity_time)
    end
  end

end
