#!/bin/bash
echo "begin"
for file in $(ls test_blur_to_sharp);do
echo ${file%.*}
python deblur_image.py --image_path=test_blur_to_sharp/${file} 
done
echo "end"

# echo "begin"
# for file in $(ls test_blur_to_sharp);do
# echo ${file%.*}

# python inference.py --model pretrained/blurred2sharp.pb --input test_blur_to_sharp/${file} --output test_sharp_to_blur/sharp${file%.*}.jpg --image_size 256
# done
# echo "end"
