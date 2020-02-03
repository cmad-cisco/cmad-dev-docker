source .env
if [[ "${data_dir}" == "" ]]; then
  echo "Please specify your data directory in a file named '.env'"
fi
if [[ ! -d ${data_dir} ]]; then
  mkdir -p ${data_dir}
fi
function make_data_subdir() {
    if [[ ! -d ${data_dir}/$1 ]]; then
      mkdir ${data_dir}/$1
      echo "Created ${data_dir}/$1"
    fi
}
make_data_subdir mongo
make_data_subdir mongo-configdb
make_data_subdir mysql
