for env in cs285/policies/experts/*; do
	env="${env##*/}"
	env="${env%.*}"
	echo $env
	python cs285/scripts/run_hw1.py \
--expert_policy_file cs285/policies/experts/$env.pkl \
--env_name $env-v2 --exp_name bc_"${env,,}" --n_iter 1 \
--expert_data cs285/expert_data/expert_data_$env-v2.pkl \
--video_log_freq -1

done
