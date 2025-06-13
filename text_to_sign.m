% SILENT SPEEK - Text to Sign Language Display 

% Step 1: Create a dictionary to map words to sign images
signDict = containers.Map;
signDict('hello') = 'dataset/hello.png';
signDict('thank you') = 'dataset/thank_you.png';
signDict('please') = 'dataset/please.png';
signDict('sorry') = 'dataset/sorry.png';
signDict('goodbye') = 'dataset/goodbye.png';
signDict('again') = 'dataset/again.png';
signDict('bad') = 'dataset/bad.png';
signDict('doctor') = 'dataset/doctor.png';
signDict('dont') = 'dataset/dont.png';
signDict('dont hit') = 'dataset/dont_hit.png';
signDict('eat') = 'dataset/eat.png';
signDict('friend') = 'dataset/friend.png';
signDict('good') = 'dataset/good.png';
signDict('help') = 'dataset/help.png';
signDict('hospital') = 'dataset/hospital.png';
signDict('hurt') = 'dataset/hurt.png';
signDict('medicine') = 'dataset/medicine.png';
signDict('more') = 'dataset/more.png';
signDict('no') = 'dataset/no.png';
signDict('scared') = 'dataset/scared.png';
signDict('sick') = 'dataset/sick.png';
signDict('try') = 'dataset/try.png';
signDict('welcome') = 'dataset/welcome.png';
signDict('yes') = 'dataset/yes.png';


% Step 2: Get user input
inputWord = lower(input('Enter your word  ', 's'));

% Step 3: Check if the word exists in the dictionary
if isKey(signDict, inputWord)
    imagePath = signDict(inputWord);    % Get the correct image path
    img = imread(imagePath);             % Read the image
    img = imresize(img, [400 400]);      % Resize the image to 400x400
    imshow(img);
    title(['Sign for "', inputWord, '"']);
else
    disp("Sorry, no sign found for: " + inputWord);
end
