echo [$(date)]: "START"
export _VERSION_=3.9
echo [$(date)]: "creating environment with python ${_VERSION_}"
conda create --prefix ./env python=${_VERSION_} -y
echo [$(date)]: "activate environment"
source activate ./env
echo [$(date)]: "Initialize git"
git init
# echo [$date]: "Installation pycoco"
# pip3 install "git+https://github.com/philferriere/cocoapi.git#egg=pycocotools&subdirectory=PythonAPI"
echo [$(date)]: "install requirements"
pip install -r requirements.txt


# to remove everything -
# rm -rf env/ .gitignore conda.yaml README.md .git/

