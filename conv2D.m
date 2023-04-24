function func = conv2D(img_path,stride, is_same,  filter ) 
    %check if zero padding should apply to input image
    if(is_same)
        img_path=padarray(img_path , [1 1] , 0);
    end
    height = size(img_path , 1);                                               
    width = size(img_path , 2);                                               
    filersS = size(filter , 3);
    fs = size(filter( : , : , 1) , 1);
    func = zeros(floor((height - fs ) / stride + 1) , floor((width - fs) / stride + 1 ) , filersS);
    %calculate output for each filter in filters
    for i = 1 : filersS
        kernel = filter( : , : , i);                              
        fs = size(kernel , 1);                                    
        fMap = zeros(floor((height - fs ) / stride + 1), floor((width - fs ) / stride + 1)); 
        row = 1;
        for j = 1 : stride : height - fs + 1
            col = 1;
                for k = 1 : stride : width - fs + 1                              
                    local = img_path(j : j + fs - 1 , k : k + fs - 1);   
                    conv = double(local) .* kernel;          
                    fMap(row , col) = sum(conv, 'all');         
                    col = col + 1;
                end
            row = row + 1;
        end
    func( : , : , i)=fMap;
    end
end