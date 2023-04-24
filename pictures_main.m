clc; clear;
%%%%%%%%%%% DEFINE FILTERS %%%%%%%%%%%
horizontal_edge = [[-1,-1,-1];
                   [0,0,0];
                   [1,1,1]];


embossing = [
    [-2, -1, 0];
    [-1, 1, 1];
    [0, 1, 2];
];

             
sharpening = [[0,-1,0];
              [-1,5,-1];
              [0,-1,0]];
          

              
gaussian = (1/273)*[[1,4,7,4,1];
                        [4,16,26,16,4];
                        [7,26,41,26,7];
                        [4,16,26,16,4];
                        [1,4,7,4,1]];
                    
%%%%%%%%%%% YOUR CODE HERE %%%%%%%%%%%
        %1
        %%%%%%%%%%% READ THE INPUT IMAGE %%%%%%%%%%%
        src = imread('C:\Users\98912\Desktop\mat3-computeri\input_images\kitty.jpg');
        %%%%%%%%%%% concatening filters ot build the `filters` tensor %%%%%%%%%%%
        filter1_1 =sharpening;
        filter1_2 = horizontal_edge;
        filter1_3 = embossing;
        filter1_4 = gaussian;
        %%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
        stride = 1;
        is_same = false;
        %%%%%%%%%%% calculate and show the result %%%%%%%%%%%
        figure
        res1 = conv2D(src ,stride,is_same, filter1_1);
        o1 = uint8(res1);
        subplot(1 , 2 , 1);
        imshow(src);
        subplot(1 , 2 , 2);
        imwrite(o1,"C:\Users\98912\Desktop\mat3-computeri\output_images\kitty_Sharpness_valid_1.jpg");
        imshow(o1);
        %%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
        stride = 2;
        is_same = true;


        figure
        res2 = conv2D(src ,stride,is_same, filter1_2);
        o2 = uint8(res2);
        subplot(1 , 2 , 1);
        imshow(src);
        subplot(1 , 2 , 2);
         imwrite(o2,"C:\Users\98912\Desktop\mat3-computeri\output_images\kitty_Horizontal_same_2.jpg");
        imshow(o2);
        %%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
        stride = 3;
        is_same = false;

        figure
        res3 = conv2D(src ,stride,is_same, filter1_3);
        o3 = uint8(res3);
        subplot(1 , 2 , 1);
        imshow(src);
        subplot(1 , 2 , 2);
         imwrite(o3,"C:\Users\98912\Desktop\mat3-computeri\output_images\kitty_Embossing_valid_3.jpg");
        imshow(o3);

        %%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
        stride = 1;
        is_same = true;

        figure
        res4 = conv2D(src ,stride,is_same, filter1_4);
        o4 = uint8(res4);
        subplot(1 , 2 , 1);
        imshow(src);
        subplot(1 , 2 , 2);
        imwrite(o4,"C:\Users\98912\Desktop\mat3-computeri\output_images\kitty_Gaussian_same_1.jpg");
        imshow(o4);

        %2
        %%%%%%%%%%% READ THE INPUT IMAGE %%%%%%%%%%%
        src = imread("C:\Users\98912\Desktop\mat3-computeri\input_images\lecun.jpg");
         %%%%%%%%%%% concatening filters ot build the `filters` tensor %%%%%%%%%%%
        filter1_1 =sharpening;
        filter1_2 = horizontal_edge;
        filter1_3 = embossing;
        filter1_4 = gaussian;
        %%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
        stride = 1;
        is_same = false;
        %%%%%%%%%%% calculate and show the result %%%%%%%%%%%
        figure
        res1 = conv2D(src ,stride,is_same, filter1_1);
        o1 = uint8(res1);
        subplot(1 , 2 , 1);
        imshow(src);
        subplot(1 , 2 , 2);
          imwrite(o1,"C:\Users\98912\Desktop\mat3-computeri\output_images\lecun_Sharpness_valid_1.jpg");
        imshow(o1);
        %%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
        stride = 2;
        is_same = true;


        figure
        res2 = conv2D(src ,stride,is_same, filter1_2);
        o2 = uint8(res2);
        subplot(1 , 2 , 1);
        imshow(src);
        subplot(1 , 2 , 2);
         imwrite(o2,"C:\Users\98912\Desktop\mat3-computeri\output_images\lecun_Horizontal_same_2.jpg");
        imshow(o2);
        %%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
        stride = 3;
        is_same = false;

        figure
        res3 = conv2D(src ,stride,is_same, filter1_3);
        o3 = uint8(res3);
        subplot(1 , 2 , 1);
        imshow(src);
        subplot(1 , 2 , 2);
         imwrite(o3,"C:\Users\98912\Desktop\mat3-computeri\output_images\lecun_Embossing_valid_3.jpg");
        imshow(o3);

        %%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
        stride = 1;
        is_same = true;


        figure
        res4 = conv2D(src ,stride,is_same, filter1_4);
        o4 = uint8(res4);
        subplot(1 , 2 , 1);
        imshow(src);
        subplot(1 , 2 , 2);
        imwrite(o4,"C:\Users\98912\Desktop\mat3-computeri\output_images\lecun_Gaussian_same_1.jpg");
        imshow(o4);
        %3
        %%%%%%%%%%% READ THE INPUT IMAGE %%%%%%%%%%%
        src = imread('C:\Users\98912\Desktop\mat3-computeri\input_images\milad.jpg');
          %%%%%%%%%%% concatening filters ot build the `filters` tensor %%%%%%%%%%%
        filter1_1 =sharpening;
        filter1_2 = horizontal_edge;
        filter1_3 = embossing;
        filter1_4 = gaussian;
        %%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
        stride = 1;
        is_same = false;
        %%%%%%%%%%% calculate and show the result %%%%%%%%%%%
        figure
        res1 = conv2D(src ,stride,is_same, filter1_1);
        o1 = uint8(res1);
        subplot(1 , 2 , 1);
        imshow(src);
        subplot(1 , 2 , 2);
        imwrite(o1,"C:\Users\98912\Desktop\mat3-computeri\output_images\milad_Sharpness_valid_1.jpg");
        imshow(o1);
        %%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
        stride = 2;
        is_same = true;


        figure
        res2 = conv2D(src ,stride,is_same, filter1_2);
        o2 = uint8(res2);
        subplot(1 , 2 , 1);
        imshow(src);
        subplot(1 , 2 , 2);
        imwrite(o2,"C:\Users\98912\Desktop\mat3-computeri\output_images\milad_Horizontal_same_2.jpg");
        imshow(o2);
        %%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
        stride = 3;
        is_same = false;

        figure
        res3 = conv2D(src ,stride,is_same, filter1_3);
        o3 = uint8(res3);
        subplot(1 , 2 , 1);
        imshow(src);
        subplot(1 , 2 , 2);
        imwrite(o3,"C:\Users\98912\Desktop\mat3-computeri\output_images\milad_Embossing_valid_3.jpg");
        imshow(o3);

        %%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
        stride = 1;
        is_same = true;


        figure
        res4 = conv2D(src ,stride,is_same, filter1_4);
        o4 = uint8(res4);
        subplot(1 , 2 , 1);
        imshow(src);
        subplot(1 , 2 , 2);
         imwrite(o4,"C:\Users\98912\Desktop\mat3-computeri\output_images\milad_Gaussian_same_1.jpg");
        imshow(o4);
        %4
        %%%%%%%%%%% READ THE INPUT IMAGE %%%%%%%%%%%
        src = imread('C:\Users\98912\Desktop\mat3-computeri\input_images\mask.jpg');
         %%%%%%%%%%% concatening filters ot build the `filters` tensor %%%%%%%%%%%
        filter1_1 =sharpening;
        filter1_2 = horizontal_edge;
        filter1_3 = embossing;
        filter1_4 = gaussian;
        %%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
        stride = 1;
        is_same = false;
        %%%%%%%%%%% calculate and show the result %%%%%%%%%%%
        figure
        res1 = conv2D(src ,stride,is_same, filter1_1);
        o1 = uint8(res1);
        subplot(1 , 2 , 1);
        imshow(src);
        subplot(1 , 2 , 2);
         imwrite(o1,"C:\Users\98912\Desktop\mat3-computeri\output_images\mask_Sharpness_valid_1.jpg");
        imshow(o1);
        %%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
        stride = 2;
        is_same = true;


        figure
        res2 = conv2D(src ,stride,is_same, filter1_2);
        o2 = uint8(res2);
        subplot(1 , 2 , 1);
        imshow(src);
        subplot(1 , 2 , 2);
         imwrite(o2,"C:\Users\98912\Desktop\mat3-computeri\output_images\mask_Horizontal_same_2.jpg");
        imshow(o2);
        %%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
        stride = 3;
        is_same = false;

        figure
        res3 = conv2D(src ,stride,is_same, filter1_3);
        o3 = uint8(res3);
        subplot(1 , 2 , 1);
        imshow(src);
        subplot(1 , 2 , 2);
        imwrite(o3,"C:\Users\98912\Desktop\mat3-computeri\output_images\mask_Embossing_valid_3.jpg");
        imshow(o3);

        %%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
        stride = 1;
        is_same = true;


        figure
        res4 = conv2D(src ,stride,is_same, filter1_4);
        o4 = uint8(res4);
        subplot(1 , 2 , 1);
        imshow(src);
        subplot(1 , 2 , 2);
           imwrite(o4,"C:\Users\98912\Desktop\mat3-computeri\output_images\mask_Gaussian_same_1.jpg");
        imshow(o4);

        