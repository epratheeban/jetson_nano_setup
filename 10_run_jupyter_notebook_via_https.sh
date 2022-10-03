cd $HOME
mkdir certs
echo "Certificat directory at $HOME/certs"
cd certs
echo "Configuring openssl"|

# https://github.com/jupyter/notebook/issues/507#issuecomment-145390380
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout mycert.pem -out mycert.pem
sudo chown $USER:$USER $HOME/certs/mycert.pem


# Jupyter config


sudo chown $USER:$USER $HOME/.jupyter #change ownership for file prepending

JUPYTER_CONFIG_FILE="$HOME/.jupyter/jupyter_notebook_config.py"
# Parses password from json
JUPYTER_PWD=$(sudo jq '.NotebookApp.password' $HOME/.jupyter/jupyter_notebook_config.json)

# Configuration string
JUPYTER_CONFIG_UPDATE=\
"c = get_config()

# Inline plotting
c.IPKernelApp.pylab = 'inline'

# Notebook config
c.NotebookApp.certfile = u'$HOME/certs/mycert.pem' #location of your certificate file
c.NotebookApp.ip = '0.0.0.0'
c.NotebookApp.open_browser = False  #so that the ipython notebook does not opens up a browser by default
c.NotebookApp.password = u$JUPYTER_PWD  #the encrypted password we generated above
# Set the port to 8888
c.NotebookApp.port = 8888

# Configuration file for jupyter-notebook.
c.Notebook.allow_origin='*'

c.InteractiveShellApp.extensions = ['autoreload']
c.InteractiveShellApp.exec_lines = ['%autoreload 2']"

# Concat config string with original file and update config file
sudo printf '%s\n%s\n' "$JUPYTER_CONFIG_UPDATE" "$(sudo cat $JUPYTER_CONFIG_FILE)" > $JUPYTER_CONFIG_FILE