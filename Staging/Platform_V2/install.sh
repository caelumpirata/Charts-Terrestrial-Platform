#!/bin/bash


helm install auth-v2 auth_v2 -n staging
helm install platform-v2 platform_v2  -n staging
helm install history-v2 history_v2 -n staging
helm install  tag-v2 tag_v2 -n staging
helm install  alarm-v2 alarm_v2 -n staging
