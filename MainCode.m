port = 'COM9';

% model of your arduino board

board = 'Uno';

% creating arduino object with servo library

arduino_board = arduino(port, board, 'Libraries', 'Servo');

% creating servo motor object

servo_motor_1 = servo(arduino_board, 'D8');
servo_motor_2 = servo(arduino_board, 'D9');
servo_motor_3 = servo(arduino_board, 'D10');
servo_motor_4 = servo(arduino_board, 'D11');
servo_motor_5 = servo(arduino_board, 'D12');
servo_motor_6 = servo(arduino_board, 'D13');
q1 = readPosition(servo_motor_1);
q2 = readPosition(servo_motor_2);
q3 = readPosition(servo_motor_3);
q4 = readPosition(servo_motor_4);
q5 = readPosition(servo_motor_5);
q6 = readPosition(servo_motor_6);

q0=[q1 q2 q3 q4 q5 q6]
P0=forkine(q1,q2,q3,q4,q5,q6);
prompt= 'What is the final position coordinates in mm? ';
P1=input(prompt);

R=pathplanning(P0,P1)
for i=1:10
    q[i]=invkine(R(i,1),R(i,2),R(i,3));
end


for i=1:10
    if q1<q[i,1]
        for theta1=q1:0.005:q[1]/180;
            writePosition(servo_motor_1, q[1]/180);
            current_pos = readPosition(servo_motor_1);
            current_pos = current_pos*180;
            fprintf('Current motor 1 position is %d degrees\n', current_pos);
            pause(0.009);
        end
    else
        for theta1=current_position:-0.005:q[1]/180
            writePosition(servo_motor_1, q[1]/180);
            current_pos = readPosition(servo_motor_1);
            current_pos = current_pos*180;
            fprintf('Current motor 1 position is %d degrees\n', current_pos);
            pause(0.009);
        end
    end

    %motor 2

    if q2<q[i,2]
        for theta2=current_position:0.005:q[1]/180;
            writePosition(servo_motor_1, q[1]/180);
            current_pos = readPosition(servo_motor_1);
            current_pos = current_pos*180;
            fprintf('Current motor 1 position is %d degrees\n', current_pos);
            pause(0.009);
        end
    else
        for theta2=current_position:-0.005:q[1]/180
            writePosition(servo_motor_1, q[1]/180);
            current_pos = readPosition(servo_motor_1);
            current_pos = current_pos*180;
            fprintf('Current motor 1 position is %d degrees\n', current_pos);
            pause(0.009);
        end
    end

    %motor 3
    if q3<q[i,3]
        for theta3=current_position:0.005:q[1]/180;
            writePosition(servo_motor_1, q[1]/180);
            current_pos = readPosition(servo_motor_1);
            current_pos = current_pos*180;
            fprintf('Current motor 1 position is %d degrees\n', current_pos);
            pause(0.009);
        end
    else
        for theta3=current_position:-0.005:q[1]/180
            writePosition(servo_motor_1, q[1]/180);
            current_pos = readPosition(servo_motor_1);
            current_pos = current_pos*180;
            fprintf('Current motor 1 position is %d degrees\n', current_pos);
            pause(0.009);
        end
    end

    %motor 4

    if q4<q[i,4]
        for theta4=current_position:0.005:q[1]/180;
            writePosition(servo_motor_1, q[1]/180);
            current_pos = readPosition(servo_motor_1);
            current_pos = current_pos*180;
            fprintf('Current motor 1 position is %d degrees\n', current_pos);
            pause(0.009);
        end
    else
        for theta4=current_position:-0.005:q[1]/180
            writePosition(servo_motor_1, q[1]/180);
            current_pos = readPosition(servo_motor_1);
            current_pos = current_pos*180;
            fprintf('Current motor 1 position is %d degrees\n', current_pos);
            pause(0.009);
        end
    end

    %motor 5
    if q5<q[i,5]
        for theta1=current_position:0.005:q[1]/180;
            writePosition(servo_motor_1, q[1]/180);
            current_pos = readPosition(servo_motor_1);
            current_pos = current_pos*180;
            fprintf('Current motor 1 position is %d degrees\n', current_pos);
            pause(0.009);
        end
    else
        for theta5=current_position:-0.005:q[1]/180
            writePosition(servo_motor_1, q[1]/180);
            current_pos = readPosition(servo_motor_1);
            current_pos = current_pos*180;
            fprintf('Current motor 1 position is %d degrees\n', current_pos);
            pause(0.009);
        end
    end

    %Motor 6
    if q6<q[i,6]
        for theta1=current_position:0.005:q[1]/180;
            writePosition(servo_motor_1, q[1]/180);
            current_pos = readPosition(servo_motor_1);
            current_pos = current_pos*180;
            fprintf('Current motor 1 position is %d degrees\n', current_pos);
            pause(0.009);
        end
    else
        for theta6=current_position:-0.005:q[1]/180
            writePosition(servo_motor_1, q[1]/180);
            current_pos = readPosition(servo_motor_1);
            current_pos = current_pos*180;
            fprintf('Current motor 1 position is %d degrees\n', current_pos);
            pause(0.009);
        end
    end
end
