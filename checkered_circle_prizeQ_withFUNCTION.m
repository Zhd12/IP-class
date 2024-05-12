clc;clear;close all;
img = zeros(400,400,3,'uint8');
c = [200,200];
img = checkered_circle(img,180,c,true);
img = checkered_circle(img,130,c,false);
img = checkered_circle(img,80,c,true);
imshow(img);

function img = checkered_circle(img,r,center,flag)
    if flag == true
        for j = center(2) - r : center(2) + r
            for i = center(1) - r : center(1) + r           
                sum = (j - center(2))*(j - center(2)) + (i - center(1))*(i - center(1));
                d = round(sqrt(sum));
                if d <= r
                    if j < center(2)
                        if i < center(1) && i > center(1) - r
                            img(j,i,:) = 0;
                        elseif i >= center(1) && i < center(1) + r
                            img(j,i,:) = 255;
                        end
                    elseif j >= center(2)
                        if i < center(1) && i > center(1) - r
                            img(j,i,:) = 255;
                        elseif i >= center(1) && i < center(1) + r
                            img(j,i,:) = 0;
                        end                
                    end
                end
                if d == r(1)
                    img(j,i,:) = 255;
                end
            end
        end
    else
        for j = center(2) - r : center(2) + r
            for i = center(1) - r : center(1) + r           
                sum = (j - center(2))*(j - center(2)) + (i - center(1))*(i - center(1));
                d = round(sqrt(sum));
                if d <= r
                    if j < center(2)
                        if i < center(1) && i > center(1) - r
                            img(j,i,:) = 255;
                        elseif i >= center(1) && i < center(1) + r
                            img(j,i,:) = 0;
                        end
                    elseif j >= center(2)
                        if i < center(1) && i > center(1) - r
                            img(j,i,:) = 0;
                        elseif i >= center(1) && i < center(1) + r
                            img(j,i,:) = 255;
                        end                
                    end
                end
                if d == r(1)
                    img(j,i,:) = 255;
                end
            end
        end
    end
end



