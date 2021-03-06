module MG
  class MainScene < Scene
    def initialize
      position_x = 150

      label = Text.new("Hello World", "Arial", 48)
      label.anchor_point = [0, 0]
      label.position = [position_x, 690]
      add label

      text_field = TextField.new("User name", "", 36)
      text_field.anchor_point = [0, 0]
      text_field.position = [position_x, 620]
      add text_field

      password = TextField.new("Password", "", 36)
      password.anchor_point = [0, 0]
      password.password_enabled = true
      password.position = [position_x, 570]
      add password

      button = Button.new("test", "", 32)
      button.anchor_point = [0, 0]
      button.position = [position_x, 500]
      button.load_texture_normal("button.png")
      button.load_texture_pressed("button_pressed.png")
      add button

      check_box = CheckBox.new("check_box_off.png", "check_box_on.png")
      check_box.anchor_point = [0, 0]
      check_box.position = [position_x, 420]
      add check_box

      slider = Slider.new
      slider.load_bar_texture("slider.png")
      slider.load_progress_bar_texture("slider_progress.png")
      slider.load_slid_ball_textures("slider_ball.png", "", "")
      slider.anchor_point = [0, 0]
      slider.position = [position_x, 350]
      add slider

      @loading = LoadingBar.new
      @loading.load_texture("slider_progress.png")
      @loading.anchor_point = [0, 0]
      @loading.position = [position_x, 300]
      add @loading

      radio1 = RadioButton.new("radio_off.png", "radio_on.png")
      radio1.anchor_point = [0, 0]
      radio1.position = [position_x, 200]  
      add radio1

      radio2 = RadioButton.new("radio_off.png", "radio_on.png")
      radio2.anchor_point = [0, 0]
      radio2.position = [position_x + 50, 200]      
      add radio2

      radio3 = RadioButton.new("radio_off.png", "radio_on.png")
      radio3.anchor_point = [0, 0]
      radio3.position = [position_x + 100, 200]      
      add radio3

      radio_group = RadioButtonGroup.new
      radio_group.position = [position_x, 300]  
      radio_group << radio1
      radio_group << radio2
      radio_group << radio3
      radio_group.select(radio2)
      add radio_group

      start_update
    end

    def update(delta)
      progress = @loading.progress
      progress = 0 if progress >= 100
      @loading.progress = progress + 1
    end
  end
end