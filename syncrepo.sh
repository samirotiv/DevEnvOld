cd "${0%/*}"
cur=$PWD
export LC_ALL=C

# Calls update script to update Aggregate repo
bash ./DevEnvAggregate/update.sh


# Copy Aggregate repo to sanitation box and delete git stuff
rm -rf ./sanitization_box
cp -R DevEnvAggregate sanitization_box

find ./sanitization_box -iname ".git*" | while read gitobj; do
	rm -rf $gitobj
done





# Copy updated home & packages to DevEnv
rm -rf ./DevEnv/home
rm -rf ./DevEnv/packages

mv ./sanitization_box/home ./DevEnv
mv ./sanitization_box/packages ./DevEnv

rm -rf ./sanitization_box




# Call script to commit & push DevEnv repo
bash ./DevEnv/push.sh
