cask 'open-jupyter-notebook' do
  version '0.3'
  sha256 '4761f6e6fd05f75ead5e16cf4a24a4ef25bc7177df05313c79adfd700a1ee008'

  url "https://github.com/alexarntzen/open-jupyter-notebook/archive/master.zip"
  name 'Open Jupyter Notebook'
  desc "App that opens Jypter Notebooks with double click"
  homepage 'https://github.com/alexarntzen/open-jupyter-notebook'

  app 'open-jupyter-notebook-master/Open Jupyter Notebook.app'
  preflight do 
    system_command 'pip3 install nbopen;'
  end 
  
  installer script: {
    executable: "pip3 install nbopen",
    args:       ["-silent"],
    sudo:       true,
  }
end
