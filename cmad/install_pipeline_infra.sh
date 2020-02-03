wget http://maglev-fileserver.cisco.com/artifacts/maglev/latest/javacontainer.tar && tar -xf javacontainer.tar -C /opt/maglev
rm javacontainer.tar
wget http://maglev-fileserver.cisco.com/artifacts/ndp/latest/schemaregistry.tar.gz && tar -xf schemaregistry.tar.gz -C /
rm schemaregistry.tar.gz
wget http://maglev-fileserver.cisco.com/artifacts/ndp/latest/pipelineadmin.tar.gz && tar -xf pipelineadmin.tar.gz -C /
rm pipelineadmin.tar.gz
wget http://maglev-fileserver.cisco.com/artifacts/ndp/latest/pipelineruntime.tar.gz && tar -xf pipelineruntime.tar.gz -C /
rm pipelineruntime.tar.gz
wget http://maglev-fileserver.cisco.com/artifacts/ndp/latest/queryengine.tar.gz && tar -xf queryengine.tar.gz -C /
rm queryengine.tar.gz
./start_pipeline_infra.sh