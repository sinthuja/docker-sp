# ------------------------------------------------------------------------
#
# Copyright 2017 WSO2, Inc. (http://wso2.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License
#
# ------------------------------------------------------------------------

# set to latest Ubuntu LTS
FROM wso2sp-base:4.3.0
MAINTAINER WSO2 Docker Maintainers "dev@wso2.org"

ARG VICK_PROFILE_FILES=./files

# copy the osgified jars
COPY --chown=wso2carbon:wso2 ${VICK_PROFILE_FILES}/lib/*.jar ${WSO2_SERVER_HOME}/lib/
COPY --chown=wso2carbon:wso2 ${VICK_PROFILE_FILES}/siddhi/* ${WSO2_SERVER_HOME}/wso2/worker/deployment/siddhi-files/
COPY --chown=wso2carbon:wso2 ${VICK_PROFILE_FILES}/conf/* ${WSO2_SERVER_HOME}/conf/worker/


# copy entrypoint bash script to user home
COPY --chown=wso2carbon:wso2 init.sh ${WORKING_DIRECTORY}/

# expose ports
EXPOSE 9090 9443 9712 9612 7711 7611 9091 9411 9092

ENTRYPOINT ["/home/wso2carbon/init.sh"]
