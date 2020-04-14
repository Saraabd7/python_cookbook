# python_cookbook

## Create Virtual Machine

- Create Virtual Machine (Vagrant init, Vagrant up)


## Creating an image

To create an image, when in the python_app_ami folder, in the command line type:

```
packer build python_app_cookbook/packer.json

```

## Running the app

 In the command line type:

```
ssh -i ~/location/of/key/key_name.pem ubuntu@xxx.xxx.xxx.xxx

```

Enter the app directory:

```
cd app

```
## Run the app:

```
python3 main.py

```

- To find the contents of the app after completion goes to the Downloads folder:

```
cd /home/vagrant/Downloads

```
