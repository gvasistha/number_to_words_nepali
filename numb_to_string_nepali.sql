DELIMITER $$
CREATE  FUNCTION `number_to_string`(n INT) RETURNS varchar(100) CHARSET utf8
BEGIN
    declare ans varchar(1000) CHARSET utf8;
    declare dig1, dig2, dig3, dig4, dig5, dig6, dig7, dig8, dig9 int;

    set ans = '';
    set dig9 = floor(n/100000000);
    set dig8 = floor(n/10000000) - dig9*10;
    set dig7 = floor(n/1000000) -(floor(n/10000000)*10);
    set dig6 = floor(n/100000) - (floor(n/1000000)*10);
    set dig5 = floor(n/10000) -  (floor(n/100000)*10);
    set dig4 = floor(n/1000) -   (floor(n/10000)*10);
    set dig3 = floor(n/100) -    (floor(n/1000)*10);
    set dig2 = floor(n/10) -     (floor(n/100)*10);
    set dig1 = n - (floor(n / 10)*10);
if dig7 >= 1 and dig6<>0 then
        case
            when (dig7*10 + dig6) = 10 then set ans=concat(ans,' दस लाख');
            when (dig7*10 + dig6) = 11 then set ans=concat(ans,' एघार लाख');
            when (dig7*10 + dig6) = 12 then set ans=concat(ans,' बार्ह  लाख');
            when (dig7*10 + dig6) = 13 then set ans=concat(ans,' तेह्र लाख');
            when (dig7*10 + dig6) = 14 then set ans=concat(ans,' चौध लाख');
            when (dig7*10 + dig6) = 15 then set ans=concat(ans,' पन्ध्र लाख');
            when (dig7*10 + dig6) = 16 then set ans=concat(ans,' सोह्र लाख');
            when (dig7*10 + dig6) = 17 then set ans=concat(ans,' सत्र लाख');
            when (dig7*10 + dig6) = 18 then set ans=concat(ans,' अठार लाख');
            when (dig7*10 + dig6) = 19 then set ans=concat(ans,' उन्नाइस लाख');
            
            
            when (dig7*10 + dig6) = 21 then set ans=concat(ans,' एक्काइस लाख');
            when (dig7*10 + dig6) = 22 then set ans=concat(ans,' बाइस  लाख');
            when (dig7*10 + dig6) = 23 then set ans=concat(ans,' तेइस लाख');
            when (dig7*10 + dig6) = 24 then set ans=concat(ans,' चौबिस लाख');
            when (dig7*10 + dig6) = 25 then set ans=concat(ans,' पचिस लाख');
            when (dig7*10 + dig6) = 26 then set ans=concat(ans,' छबिस लाख');
            when (dig7*10 + dig6) = 27 then set ans=concat(ans,' सत्ताइस र लाख');
            when (dig7*10 + dig6) = 28 then set ans=concat(ans,' अठाईस  लाख');
            when (dig7*10 + dig6) = 29 then set ans=concat(ans,' उनन्तिस लाख');
            
            when (dig7*10 + dig6) = 31 then set ans=concat(ans,' एकतिस लाख');
            when (dig7*10 + dig6) = 32 then set ans=concat(ans,' बत्तीस लाख');
            when (dig7*10 + dig6) = 33 then set ans=concat(ans,' तेत्तिस लाख');
            when (dig7*10 + dig6) = 34 then set ans=concat(ans,' चौतिस  लाख');
            when (dig7*10 + dig6) = 35 then set ans=concat(ans,' पैतिस  लाख');
            when (dig7*10 + dig6) = 36 then set ans=concat(ans,' छत्तिस लाख');
            when (dig7*10 + dig6) = 37 then set ans=concat(ans,' सैतिस  लाख');
            when (dig7*10 + dig6) = 38 then set ans=concat(ans,' अड्तीस  लाख');
            when (dig7*10 + dig6) = 39 then set ans=concat(ans,' उनन्चालीस लाख');
            
            when (dig7*10 + dig6) = 41 then set ans=concat(ans,' एकचालीस लाख');
            when (dig7*10 + dig6) = 42 then set ans=concat(ans,' बयालीस लाख');
            when (dig7*10 + dig6) = 43 then set ans=concat(ans,' त्रियालीस लाख');
            when (dig7*10 + dig6) = 44 then set ans=concat(ans,' चवालीस  लाख');
            when (dig7*10 + dig6) = 45 then set ans=concat(ans,' पैँतालीस  लाख');
            when (dig7*10 + dig6) = 46 then set ans=concat(ans,' छयालीस लाख');
            when (dig7*10 + dig6) = 47 then set ans=concat(ans,' सच्चालीस  लाख');
            when (dig7*10 + dig6) = 48 then set ans=concat(ans,' अठचालीस  लाख');
            when (dig7*10 + dig6) = 49 then set ans=concat(ans,' उनन्चास लाख');
            
            when (dig7*10 + dig6) = 51 then set ans=concat(ans,' एकाउन्न लाख');
            when (dig7*10 + dig6) = 52 then set ans=concat(ans,' बाउन्न लाख');
            when (dig7*10 + dig6) = 53 then set ans=concat(ans,' त्रिपन्न लाख');
            when (dig7*10 + dig6) = 54 then set ans=concat(ans,' चउन्न  लाख');
            when (dig7*10 + dig6) = 55 then set ans=concat(ans,' पचपन्न  लाख');
            when (dig7*10 + dig6) = 56 then set ans=concat(ans,' छपन्न लाख');
            when (dig7*10 + dig6) = 57 then set ans=concat(ans,' सन्ताउन्न  लाख');
            when (dig7*10 + dig6) = 58 then set ans=concat(ans,' अन्ठाउन्न  लाख');
            when (dig7*10 + dig6) = 59 then set ans=concat(ans,' उनन्साठी लाख');
            
                        when (dig7*10 + dig6) = 61 then set ans=concat(ans,' एकसट्ठी लाख');
            when (dig7*10 + dig6) = 62 then set ans=concat(ans,' बयसट्ठी लाख');
            when (dig7*10 + dig6) = 63 then set ans=concat(ans,' त्रिसट्ठी लाख');
            when (dig7*10 + dig6) = 64 then set ans=concat(ans,' चौंसट्ठी  लाख');
            when (dig7*10 + dig6) = 65 then set ans=concat(ans,' पैंसट्ठी  लाख');
            when (dig7*10 + dig6) = 66 then set ans=concat(ans,' छयसट्ठी लाख');
            when (dig7*10 + dig6) = 67 then set ans=concat(ans,' सतसट्ठी  लाख');
            when (dig7*10 + dig6) = 68 then set ans=concat(ans,' अठसट्ठी  लाख');
            when (dig7*10 + dig6) = 69 then set ans=concat(ans,' उनन्सत्तरी लाख');
            
                        when (dig7*10 + dig6) = 71 then set ans=concat(ans,' एकहत्तर लाख');
            when (dig7*10 + dig6) = 72 then set ans=concat(ans,' बहत्तर लाख');
            when (dig7*10 + dig6) = 73 then set ans=concat(ans,' त्रिहत्तर लाख');
            when (dig7*10 + dig6) = 74 then set ans=concat(ans,' चौहत्तर लाख');
            when (dig7*10 + dig6) = 75 then set ans=concat(ans,' पचहत्तर लाख');
            when (dig7*10 + dig6) = 76 then set ans=concat(ans,' छयहत्तर लाख');
            when (dig7*10 + dig6) = 77 then set ans=concat(ans,' सतहत्तर लाख');
            when (dig7*10 + dig6) = 78 then set ans=concat(ans,' अठहत्तर लाख');
            when (dig7*10 + dig6) = 79 then set ans=concat(ans,' उनासी लाख');
            
                        when (dig7*10 + dig6) = 81 then set ans=concat(ans,' एकासी लाख');
            when (dig7*10 + dig6) = 82 then set ans=concat(ans,' बयासी लाख');
            when (dig7*10 + dig6) = 83 then set ans=concat(ans,' त्रियासी लाख');
            when (dig7*10 + dig6) = 84 then set ans=concat(ans,' चौरासी लाख');
            when (dig7*10 + dig6) = 85 then set ans=concat(ans,' पचासी लाख');
            when (dig7*10 + dig6) = 86 then set ans=concat(ans,' छयासी लाख');
            when (dig7*10 + dig6) = 87 then set ans=concat(ans,' सतासी लाख');
            when (dig7*10 + dig6) = 88 then set ans=concat(ans,' अठासी लाख');
            when (dig7*10 + dig6) = 89 then set ans=concat(ans,' उनान्नब्बे लाख');
            
                        when (dig7*10 + dig6) = 91 then set ans=concat(ans,' एकान्नब्बे लाख');
            when (dig7*10 + dig6) = 92 then set ans=concat(ans,' बयानब्बे लाख');
            when (dig7*10 + dig6) = 93 then set ans=concat(ans,' त्रियान्नब्बे लाख');
            when (dig7*10 + dig6) = 94 then set ans=concat(ans,' चौरान्नब्बे लाख');
            when (dig7*10 + dig6) = 95 then set ans=concat(ans,' पन्चानब्बे लाख');
            when (dig7*10 + dig6) = 96 then set ans=concat(ans,' छयान्नब्बे लाख');
            when (dig7*10 + dig6) = 97 then set ans=concat(ans,' सन्तान्नब्बे लाख');
            when (dig7*10 + dig6) = 98 then set ans=concat(ans,' अन्ठान्नब्बे लाख');
            when (dig7*10 + dig6) = 99 then set ans=concat(ans,' उनान्सय लाख');
            else set ans=ans;
        end case;
    else
        if dig7 > 0 and dig6=0 then
            case
                when dig7=1 then set ans=concat(ans, ' दस ');
                when dig7=2 then set ans=concat(ans, ' बिस ');
                when dig7=3 then set ans=concat(ans, ' तिस ');
                when dig7=4 then set ans=concat(ans, ' चालिस  ');
                when dig7=5 then set ans=concat(ans, ' पचास ');
                when dig7=6 then set ans=concat(ans, ' साठी');
                when dig7=7 then set ans=concat(ans, ' सत्तरी');
                when dig7=8 then set ans=concat(ans, ' असि ');
                when dig7=9 then set ans=concat(ans, ' नब्बे ');
                else set ans=ans;
            end case;
            if ans <> '' and dig6 =0 then
            set ans=concat(ans, ' लाख');
            end if;
        end if;

        if dig6 > 0 and dig7 =0 then
        case
            when dig6=1 then set ans=concat(ans, ' एक लाख');
            when dig6=2 then set ans=concat(ans, ' दुइ लाख');
            when dig6=3 then set ans=concat(ans, ' तिन लाख');
            when dig6=4 then set ans=concat(ans, ' चार लाख');
            when dig6=5 then set ans=concat(ans, ' पाँच लाख');
            when dig6=6 then set ans=concat(ans, ' छ लाख');
            when dig6=7 then set ans=concat(ans, ' सात  लाख');
            when dig6=8 then set ans=concat(ans, ' आठ लाख');
            when dig6=9 then set ans=concat(ans, ' नौ  लाख');
            else set ans = ans;
        end case;
    end if;
end if;
    if ans <> '' and dig5 > 0 then
        set ans=concat(ans, '');
    end if;
    if dig5 >= 1 and dig4<>0 then
        case
            when (dig5*10 + dig4) = 10 then set ans=concat(ans,' दस हजार');
            when (dig5*10 + dig4) = 11 then set ans=concat(ans,' एघार हजार');
            when (dig5*10 + dig4) = 12 then set ans=concat(ans,' बार्ह  हजार');
            when (dig5*10 + dig4) = 13 then set ans=concat(ans,' तेह्र हजार');
            when (dig5*10 + dig4) = 14 then set ans=concat(ans,' चौध हजार');
            when (dig5*10 + dig4) = 15 then set ans=concat(ans,' पन्ध्र हजार');
            when (dig5*10 + dig4) = 16 then set ans=concat(ans,' सोह्र हजार');
            when (dig5*10 + dig4) = 17 then set ans=concat(ans,' सत्र हजार');
            when (dig5*10 + dig4) = 18 then set ans=concat(ans,' अठार हजार');
            when (dig5*10 + dig4) = 19 then set ans=concat(ans,' उन्नाइस हजार');
            
                        
            when (dig5*10 + dig4) = 21 then set ans=concat(ans,' एक्काइस हजार');
            when (dig5*10 + dig4) = 22 then set ans=concat(ans,' बाइस  हजार');
            when (dig5*10 + dig4) = 23 then set ans=concat(ans,' तेईस हजार');
            when (dig5*10 + dig4) = 24 then set ans=concat(ans,' चौविस हजार');
            when (dig5*10 + dig4) = 25 then set ans=concat(ans,' पच्चिस हजार');
            when (dig5*10 + dig4) = 26 then set ans=concat(ans,' छब्बिस हजार');
            when (dig5*10 + dig4) = 27 then set ans=concat(ans,' सत्ताइस हजार');
            when (dig5*10 + dig4) = 28 then set ans=concat(ans,' अठ्ठाईस हजार');
            when (dig5*10 + dig4) = 29 then set ans=concat(ans,' उनन्तिस हजार');
            when (dig5*10 + dig4) = 31 then set ans=concat(ans,' एकत्तिस हजार');
            when (dig5*10 + dig4) = 32 then set ans=concat(ans,' बत्तिस  हजार');
            when (dig5*10 + dig4) = 33 then set ans=concat(ans,' तेत्तिस हजार');
            when (dig5*10 + dig4) = 34 then set ans=concat(ans,' चौँतिस हजार');
            when (dig5*10 + dig4) = 35 then set ans=concat(ans,' पैँतिस हजार');
            when (dig5*10 + dig4) = 36 then set ans=concat(ans,' छत्तिस हजार');
            when (dig5*10 + dig4) = 37 then set ans=concat(ans,' सैँतीस हजार');
            when (dig5*10 + dig4) = 38 then set ans=concat(ans,' अठतीस हजार');
            when (dig5*10 + dig4) = 39 then set ans=concat(ans,' उनन्चालीस हजार');
            when (dig5*10 + dig4) = 41 then set ans=concat(ans,' एकचालीस हजार');
            when (dig5*10 + dig4) = 42 then set ans=concat(ans,' बयालीस  हजार');
            when (dig5*10 + dig4) = 43 then set ans=concat(ans,' त्रियालीस हजार');
            when (dig5*10 + dig4) = 44 then set ans=concat(ans,' चवालीस हजार');
            when (dig5*10 + dig4) = 45 then set ans=concat(ans,' पैँतालीस हजार');
            when (dig5*10 + dig4) = 46 then set ans=concat(ans,' छयालीस हजार');
            when (dig5*10 + dig4) = 47 then set ans=concat(ans,' सच्चालीस हजार');
            when (dig5*10 + dig4) = 48 then set ans=concat(ans,' अठचालीस हजार');
            when (dig5*10 + dig4) = 49 then set ans=concat(ans,' उनन्चास हजार');
            when (dig5*10 + dig4) = 51 then set ans=concat(ans,' एकाउन्न हजार');
            when (dig5*10 + dig4) = 52 then set ans=concat(ans,' बाउन्न  हजार');
            when (dig5*10 + dig4) = 53 then set ans=concat(ans,' त्रिपन्न हजार');
            when (dig5*10 + dig4) = 54 then set ans=concat(ans,' चउन्न हजार');
            when (dig5*10 + dig4) = 55 then set ans=concat(ans,' पचपन्न हजार');
            when (dig5*10 + dig4) = 56 then set ans=concat(ans,' छपन्न हजार');
            when (dig5*10 + dig4) = 57 then set ans=concat(ans,' सन्ताउन्न हजार');
            when (dig5*10 + dig4) = 58 then set ans=concat(ans,' अन्ठाउन्न हजार');
            when (dig5*10 + dig4) = 59 then set ans=concat(ans,' उनन्साठी हजार');
            when (dig5*10 + dig4) = 61 then set ans=concat(ans,' एकसट्ठी हजार');
            when (dig5*10 + dig4) = 62 then set ans=concat(ans,' बयसट्ठी  हजार');
            when (dig5*10 + dig4) = 63 then set ans=concat(ans,' त्रिसट्ठी हजार');
            when (dig5*10 + dig4) = 64 then set ans=concat(ans,' चौंसट्ठी हजार');
            when (dig5*10 + dig4) = 65 then set ans=concat(ans,' पैंसट्ठी हजार');
            when (dig5*10 + dig4) = 66 then set ans=concat(ans,' छयसट्ठी हजार');
            when (dig5*10 + dig4) = 67 then set ans=concat(ans,' सतसट्ठी हजार');
            when (dig5*10 + dig4) = 68 then set ans=concat(ans,' अठसट्ठी हजार');
            when (dig5*10 + dig4) = 69 then set ans=concat(ans,' उनन्सत्तरी हजार');
            when (dig5*10 + dig4) = 71 then set ans=concat(ans,' एकहत्तर हजार');
            when (dig5*10 + dig4) = 72 then set ans=concat(ans,' बहत्तर  हजार');
            when (dig5*10 + dig4) = 73 then set ans=concat(ans,' त्रिहत्तर हजार');
            when (dig5*10 + dig4) = 74 then set ans=concat(ans,' चौहत्तर हजार');
            when (dig5*10 + dig4) = 75 then set ans=concat(ans,' पचहत्तर हजार');
            when (dig5*10 + dig4) = 76 then set ans=concat(ans,' छयहत्तर हजार');
            when (dig5*10 + dig4) = 77 then set ans=concat(ans,' सतहत्तर हजार');
            when (dig5*10 + dig4) = 78 then set ans=concat(ans,' अठहत्तर हजार');
            when (dig5*10 + dig4) = 79 then set ans=concat(ans,' उनासी हजार');
            when (dig5*10 + dig4) = 81 then set ans=concat(ans,' एकासी हजार');
            when (dig5*10 + dig4) = 82 then set ans=concat(ans,' बयासी  हजार');
            when (dig5*10 + dig4) = 83 then set ans=concat(ans,' त्रियासी हजार');
            when (dig5*10 + dig4) = 84 then set ans=concat(ans,' चौरासी हजार');
            when (dig5*10 + dig4) = 85 then set ans=concat(ans,' पचासी हजार');
            when (dig5*10 + dig4) = 86 then set ans=concat(ans,' छयासी हजार');
            when (dig5*10 + dig4) = 87 then set ans=concat(ans,' सतासी हजार');
            when (dig5*10 + dig4) = 88 then set ans=concat(ans,' अठासी हजार');
            when (dig5*10 + dig4) = 89 then set ans=concat(ans,' उनान्नब्बे हजार');
            when (dig5*10 + dig4) = 91 then set ans=concat(ans,' एकान्नब्बे हजार');
            when (dig5*10 + dig4) = 92 then set ans=concat(ans,' बयानब्बे  हजार');
            when (dig5*10 + dig4) = 93 then set ans=concat(ans,' त्रियान्नब्बे हजार');
            when (dig5*10 + dig4) = 94 then set ans=concat(ans,' चौरान्नब्बे हजार');
            when (dig5*10 + dig4) = 95 then set ans=concat(ans,' पन्चानब्बे हजार');
            when (dig5*10 + dig4) = 96 then set ans=concat(ans,' छयान्नब्बे हजार');
            when (dig5*10 + dig4) = 97 then set ans=concat(ans,' सन्तान्नब्बे हजार');
            when (dig5*10 + dig4) = 98 then set ans=concat(ans,' अन्ठान्नब्बे हजार');
            when (dig5*10 + dig4) = 99 then set ans=concat(ans,' उनान्सय हजार');

            
            else set ans=ans;
        end case;
    else
        if dig5 > 0 and dig4=0 then
            case
                when dig5=1 then set ans=concat(ans, ' दस ');
                when dig5=2 then set ans=concat(ans, ' बिस ');
                when dig5=3 then set ans=concat(ans, ' तिस ');
                when dig5=4 then set ans=concat(ans, ' चालिस  ');
                when dig5=5 then set ans=concat(ans, ' पचास ');
                when dig5=6 then set ans=concat(ans, ' साठी');
                when dig5=7 then set ans=concat(ans, ' सत्तरी');
                when dig5=8 then set ans=concat(ans, ' असि ');
                when dig5=9 then set ans=concat(ans, ' नब्बे ');
                else set ans=ans;
            end case;
            if ans <> '' and dig4 =0 then
            set ans=concat(ans, ' हजार');
            end if;
        end if;
        if ans <> '' and dig4 > 0 and dig5 =0 then
        set ans=concat(ans, ' ');
        end if;
        if dig4 > 0 and dig5=0 then
        case
            when dig4=1 then set ans=concat(ans, ' एक हजार');
            when dig4=2 then set ans=concat(ans, ' दुइ हजार');
            when dig4=3 then set ans=concat(ans, ' तिन हजार');
            when dig4=4 then set ans=concat(ans, ' चार हजार');
            when dig4=5 then set ans=concat(ans, ' पाँच हजार');
            when dig4=6 then set ans=concat(ans, ' छ हजार');
            when dig4=7 then set ans=concat(ans, ' सात  हजार');
            when dig4=8 then set ans=concat(ans, ' आठ हजार');
            when dig4=9 then set ans=concat(ans, ' नौ  हजार');
            else set ans = ans;
        end case;
    end if;
end if;
    if ans <> '' and dig3 > 0 then
        set ans=concat(ans, ' ');
    end if;
    if dig3 > 0  then
        case
            when dig3=1 then set ans=concat(ans, 'एक सय');
            when dig3=2 then set ans=concat(ans, 'दुइ सय');
            when dig3=3 then set ans=concat(ans, 'तिन सय');
            when dig3=4 then set ans=concat(ans, 'चार सय');
            when dig3=5 then set ans=concat(ans, 'पाँच सय');
            when dig3=6 then set ans=concat(ans, 'छ सय');
            when dig3=7 then set ans=concat(ans, 'सात  सय');
            when dig3=8 then set ans=concat(ans, 'आठ सय');
            when dig3=9 then set ans=concat(ans, 'नौ  सय');
            else set ans = ans;
        end case;
    end if;
    if ans <> '' and dig2 > 0 then
        set ans=concat(ans, ' ');
    end if;
    if dig2 >= 1 and dig1<>0 then
        case
            when (dig2*10 + dig1) = 10 then set ans=concat(ans,' दस');
            when (dig2*10 + dig1) = 11 then set ans=concat(ans,' एघार');
            when (dig2*10 + dig1) = 12 then set ans=concat(ans,' बार्ह ');
            when (dig2*10 + dig1) = 13 then set ans=concat(ans,' तेह्र');
            when (dig2*10 + dig1) = 14 then set ans=concat(ans,' चौध');
            when (dig2*10 + dig1) = 15 then set ans=concat(ans,' पन्ध्र');
            when (dig2*10 + dig1) = 16 then set ans=concat(ans,' सोह्र');
            when (dig2*10 + dig1) = 17 then set ans=concat(ans,' सत्र');
            when (dig2*10 + dig1) = 18 then set ans=concat(ans,' अठार');
            when (dig2*10 + dig1) = 19 then set ans=concat(ans,' उन्नाइस');
                        
            when (dig2*10 + dig1) = 21 then set ans=concat(ans,' एक्काइस');
            when (dig2*10 + dig1) = 22 then set ans=concat(ans,' बाइस ');
            when (dig2*10 + dig1) = 23 then set ans=concat(ans,' तेईस');
            when (dig2*10 + dig1) = 24 then set ans=concat(ans,' चौविस');
            when (dig2*10 + dig1) = 25 then set ans=concat(ans,' पच्चिस');
            when (dig2*10 + dig1) = 26 then set ans=concat(ans,' छब्बिस');
            when (dig2*10 + dig1) = 27 then set ans=concat(ans,' सत्ताइस');
            when (dig2*10 + dig1) = 28 then set ans=concat(ans,' अठ्ठाईस');
            when (dig2*10 + dig1) = 29 then set ans=concat(ans,' उनन्तिस');
            when (dig2*10 + dig1) = 31 then set ans=concat(ans,' एकत्तिस');
            when (dig2*10 + dig1) = 32 then set ans=concat(ans,' बत्तिस ');
            when (dig2*10 + dig1) = 33 then set ans=concat(ans,' तेत्तिस');
            when (dig2*10 + dig1) = 34 then set ans=concat(ans,' चौँतिस');
            when (dig2*10 + dig1) = 35 then set ans=concat(ans,' पैँतिस');
            when (dig2*10 + dig1) = 36 then set ans=concat(ans,' छत्तिस');
            when (dig2*10 + dig1) = 37 then set ans=concat(ans,' सैँतीस');
            when (dig2*10 + dig1) = 38 then set ans=concat(ans,' अठतीस');
            when (dig2*10 + dig1) = 39 then set ans=concat(ans,' उनन्चालीस');
            when (dig2*10 + dig1) = 41 then set ans=concat(ans,' एकचालीस');
            when (dig2*10 + dig1) = 42 then set ans=concat(ans,' बयालीस ');
            when (dig2*10 + dig1) = 43 then set ans=concat(ans,' त्रियालीस');
            when (dig2*10 + dig1) = 44 then set ans=concat(ans,' चवालीस');
            when (dig2*10 + dig1) = 45 then set ans=concat(ans,' पैँतालीस');
            when (dig2*10 + dig1) = 46 then set ans=concat(ans,' छयालीस');
            when (dig2*10 + dig1) = 47 then set ans=concat(ans,' सच्चालीस');
            when (dig2*10 + dig1) = 48 then set ans=concat(ans,' अठचालीस');
            when (dig2*10 + dig1) = 49 then set ans=concat(ans,' उनन्चास');
            when (dig2*10 + dig1) = 51 then set ans=concat(ans,' एकाउन्न');
            when (dig2*10 + dig1) = 52 then set ans=concat(ans,' बाउन्न ');
            when (dig2*10 + dig1) = 53 then set ans=concat(ans,' त्रिपन्न');
            when (dig2*10 + dig1) = 54 then set ans=concat(ans,' चउन्न');
            when (dig2*10 + dig1) = 55 then set ans=concat(ans,' पचपन्न');
            when (dig2*10 + dig1) = 56 then set ans=concat(ans,' छपन्न');
            when (dig2*10 + dig1) = 57 then set ans=concat(ans,' सन्ताउन्न');
            when (dig2*10 + dig1) = 58 then set ans=concat(ans,' अन्ठाउन्न');
            when (dig2*10 + dig1) = 59 then set ans=concat(ans,' उनन्साठी');
            when (dig2*10 + dig1) = 61 then set ans=concat(ans,' एकसट्ठी');
            when (dig2*10 + dig1) = 62 then set ans=concat(ans,' बयसट्ठी ');
            when (dig2*10 + dig1) = 63 then set ans=concat(ans,' त्रिसट्ठी');
            when (dig2*10 + dig1) = 64 then set ans=concat(ans,' चौंसट्ठी');
            when (dig2*10 + dig1) = 65 then set ans=concat(ans,' पैंसट्ठी');
            when (dig2*10 + dig1) = 66 then set ans=concat(ans,' छयसट्ठी');
            when (dig2*10 + dig1) = 67 then set ans=concat(ans,' सतसट्ठी');
            when (dig2*10 + dig1) = 68 then set ans=concat(ans,' अठसट्ठी');
            when (dig2*10 + dig1) = 69 then set ans=concat(ans,' उनन्सत्तरी');
            when (dig2*10 + dig1) = 71 then set ans=concat(ans,' एकहत्तर');
            when (dig2*10 + dig1) = 72 then set ans=concat(ans,' बहत्तर ');
            when (dig2*10 + dig1) = 73 then set ans=concat(ans,' त्रिहत्तर');
            when (dig2*10 + dig1) = 74 then set ans=concat(ans,' चौहत्तर');
            when (dig2*10 + dig1) = 75 then set ans=concat(ans,' पचहत्तर');
            when (dig2*10 + dig1) = 76 then set ans=concat(ans,' छयहत्तर');
            when (dig2*10 + dig1) = 77 then set ans=concat(ans,' सतहत्तर');
            when (dig2*10 + dig1) = 78 then set ans=concat(ans,' अठहत्तर');
            when (dig2*10 + dig1) = 79 then set ans=concat(ans,' उनासी');
            when (dig2*10 + dig1) = 81 then set ans=concat(ans,' एकासी');
            when (dig2*10 + dig1) = 82 then set ans=concat(ans,' बयासी ');
            when (dig2*10 + dig1) = 83 then set ans=concat(ans,' त्रियासी');
            when (dig2*10 + dig1) = 84 then set ans=concat(ans,' चौरासी');
            when (dig2*10 + dig1) = 85 then set ans=concat(ans,' पचासी');
            when (dig2*10 + dig1) = 86 then set ans=concat(ans,' छयासी');
            when (dig2*10 + dig1) = 87 then set ans=concat(ans,' सतासी');
            when (dig2*10 + dig1) = 88 then set ans=concat(ans,' अठासी');
            when (dig2*10 + dig1) = 89 then set ans=concat(ans,' उनान्नब्बे');
            when (dig2*10 + dig1) = 91 then set ans=concat(ans,' एकान्नब्बे');
            when (dig2*10 + dig1) = 92 then set ans=concat(ans,' बयानब्बे ');
            when (dig2*10 + dig1) = 93 then set ans=concat(ans,' त्रियान्नब्बे');
            when (dig2*10 + dig1) = 94 then set ans=concat(ans,' चौरान्नब्बे');
            when (dig2*10 + dig1) = 95 then set ans=concat(ans,' पन्चानब्बे');
            when (dig2*10 + dig1) = 96 then set ans=concat(ans,' छयान्नब्बे');
            when (dig2*10 + dig1) = 97 then set ans=concat(ans,' सन्तान्नब्बे');
            when (dig2*10 + dig1) = 98 then set ans=concat(ans,' अन्ठान्नब्बे');
            when (dig2*10 + dig1) = 99 then set ans=concat(ans,' उनान्सय');

            
            else set ans=ans;
        end case;
    else
        if dig2 > 0 and dig1=0 then
            case
                when dig2=1 then set ans=concat(ans, ' दस ');
                when dig2=2 then set ans=concat(ans, ' बिस ');
                when dig2=3 then set ans=concat(ans, ' तिस ');
                when dig2=4 then set ans=concat(ans, ' चालिस  ');
                when dig2=5 then set ans=concat(ans, ' पचास ');
                when dig2=6 then set ans=concat(ans, ' साठी');
                when dig2=7 then set ans=concat(ans, ' सत्तरी');
                when dig2=8 then set ans=concat(ans, ' असि ');
                when dig2=9 then set ans=concat(ans, ' नब्बे ');
                else set ans=ans;
            end case;
        end if;
        if ans <> '' and dig1 > 0 and dig2 =0 then
        set ans=concat(ans, ' ');
        end if;
        if dig1 > 0 then
            case
                when dig1=1 then set ans=concat(ans, ' एक');
                when dig1=2 then set ans=concat(ans, ' दुइ');
                when dig1=3 then set ans=concat(ans, ' तिन');
                when dig1=4 then set ans=concat(ans, ' चार');
                when dig1=5 then set ans=concat(ans, ' पाँच');
                when dig1=6 then set ans=concat(ans, ' छ');
                when dig1=7 then set ans=concat(ans, ' सात ');
                when dig1=8 then set ans=concat(ans, ' आठ');
                when dig1=9 then set ans=concat(ans, ' नौ ');
                else set ans=ans;
            end case;
        end if;
    end if;

    return trim(ans);
    END$$
DELIMITER ;
-- GRANT EXECUTE ON function your_db.number_to_string TO 'youruser'@'localhost';
-- SET GLOBAL log_bin_trust_function_creators = 1;
