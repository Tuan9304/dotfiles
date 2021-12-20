filename=$1
extension="${filename##*.}"

if [ "$extension" == "cpp" ]; then
	cp -n ~/.scripts/00.cpp ./$filename;
else
	echo "Template not found"
fi

nvim $filename
