vidi = VideoReader("Dr_5e-02_q0_1e-08.mp4");
aft = VideoWriter("Dr_5e-02_q0_1e-08_after.mp4",'MPEG-4');
firstF = read(vidi,1);
imshow(firstF);
open(aft);
[~, c] = imcrop(firstF);
for i = 1: round(vidi.NumFrames/2)
    frame = imcrop(read(vidi,i),c);
    writeVideo(aft, frame);
end
close(aft);