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

# copy entrypoint bash script to user home
COPY --chown=wso2carbon:wso2 ${VICK_PROFILE_FILES}/conf/* ${WSO2_SERVER_HOME}/conf/dashboard/
COPY --chown=wso2carbon:wso2  ${VICK_PROFILE_FILES}/widgets ${WSO2_SERVER_HOME}/wso2/dashboard/deployment/web-ui-apps/portal/extensions/widgets
COPY --chown=wso2carbon:wso2 ${VICK_PROFILE_FILES}/dashboard/* ${WSO2_SERVER_HOME}/wso2/dashboard/resources/dashboards/
COPY --chown=wso2carbon:wso2 init.sh ${WORKING_DIRECTORY}/
COPY --chown=wso2carbon:wso2 ${VICK_PROFILE_FILES}/patches/widgets/OpenTracingList/widgetConf.json ${WSO2_SERVER_HOME}/wso2/dashboard/deployment/web-ui-apps/portal/extensions/widgets/OpenTracingList/

# expose ports
EXPOSE 9714 9643 9614 7713 7613

ENTRYPOINT ["/home/wso2carbon/init.sh"]
