function [out, delout1, delout2, delout3, delout4] = echo_produce(y, fs, delay1, amp1, delay2, amp2, delay3, amp3, delay4, amp4)
    in_l = length(y);
    
    
    delay_p1 = round(fs * delay1);
    delay_p2 = round(fs * delay2);
    delay_p3 = round(fs * delay3);
    delay_p4 = round(fs * delay4);

  
    total_l = in_l + max([delay_p1, delay_p2, delay_p3, delay_p4]);
    
    out = zeros(total_l, 1);
    delout1 = zeros(total_l, 1);
    delout2 = zeros(total_l, 1);
    delout3 = zeros(total_l, 1);
    delout4 = zeros(total_l, 1);

    for k = 1:total_l
        
        index1 = k - delay_p1;
        index2 = k - delay_p2;
        index3 = k - delay_p3;
        index4 = k - delay_p4;

        
        if delay_p1 > 0 && index1 > 0 && index1 <= in_l
            out(k) = out(k) + y(index1) * amp1;
            delout1(k) = y(index1) * amp1;
        end

        if delay_p2 > 0 && index2 > 0 && index2 <= in_l
            out(k) = out(k) + y(index2) * amp2;
            delout2(k) = y(index2) * amp2;
        end

        if delay_p3 > 0 && index3 > 0 && index3 <= in_l
            out(k) = out(k) + y(index3) * amp3;
            delout3(k) = y(index3) * amp3;
        end

        if delay_p4 > 0 && index4 > 0 && index4 <= in_l
            out(k) = out(k) + y(index4) * amp4;
            delout4(k) = y(index4) * amp4;
        end
    end
    
    
    max_val = max(abs(out));
    if max_val > 1
        out = out / max_val;
        delout1 = delout1 / max_val;
        delout2 = delout2 / max_val;
        delout3 = delout3 / max_val;
        delout4 = delout4 / max_val;
    end
end
