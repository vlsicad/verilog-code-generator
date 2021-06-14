function final_code1()

hFig = figure('Toolbar','none','Menubar', 'none',...
    'Name','VLSIUVM Pvt. Ltd. :- Verilog Code Generator V1.0','Resize','off','CloseRequestFcn',{@my_closereq},...
    'Position',[200 200 700 500],'Color',[0.6 0.6 0.6]);

axis off; 

lable1  = uicontrol('Style','text','FontSize',16,'String',' Select the module ',...
          'Units','normalized','Position',[0.05 0.9 0.35 0.06]);  
      
lable2  = uicontrol('Style','text','FontSize',16,'String',' Select the block ',...
          'Units','normalized','Position',[0.45 0.9 0.35 0.06]); 
      
      
%%
%  tbox   = uicontrol(gcf,'Style','edit','Max', 2,'FontSize',16,'String','     ', 'Units','normalized','Position',[0.05 0.05 0.9 0.5],'backgroundcolor','w'); 
% fid = fopen('cn.txt','r');
% A =  fread(fid, inf, 'uint8=>char')';
% fclose(fid);
% set(tbox,'string',A);
%%
tbox   = uicontrol(gcf,'Style','edit','FontSize',16,'String',' 12 ',...
          'Units','normalized','Position',[0.82 0.84 0.17 0.06],'backgroundcolor','w');  
      
lable3  = uicontrol('Style','text','FontSize',16,'String',' Project Contributors:- ',...
          'Units','normalized','Position',[0.06 0.6 0.35 0.06]);
      
 subhandles=panels(1,1);
 imgsh1=subplot(subhandles(1));
 set(imgsh1,'Units','pixels','position',[2      2    700   290]); 
 imshow(imread('names.png'));
 
xyz_type = uicontrol('Style','popupmenu','String',{'        module templets',...
     'module templet',...
    'adder',...
    'decoder',...
    'down_counter',...
    'encoder'...
     'jkff',...
    'magnitude_comparator',...
    'multiplier',...
    'NegativeDFF'...
     'positivedff',...
    'Subtractor',...
    'tff',...
    'upcounter'...    
    'dual_port_ram'...
    'paralell_to_serial'...
     'serial_to_paralell'...
    'queue'...
    'single_port_RAM'...
    'ROM_sevenSegment'...
    'shift_register'...
    'rand_num_generator'...
    },'Callback', {@xyz_type_callback},'FontSize',14,...
                'Units','normalized','Position',[0.05 0.85 .35 .05]);
            
abc_type = uicontrol('Style','popupmenu','String',{'        code block templets',...
    'Always_block',...
    'case_statement',...
    'casex_statement',...
    'casez_statement',...
    'conditional Expression'...
    'conditional assignment',...
    'for statement',...
    'if statement',...
    'Header'...
    },'Callback', {@abc_type_callback},'FontSize',14,...
                'Units','normalized','Position',[0.45 0.85 .35 .05]);
%%
    function xyz_type_callback(hObject,eventdata)
        
     val = get(xyz_type,'Value')-1
     
   switch(val)
        case 1  % code1
            set(tbox,'string',0)
            !notepad module_templet1.v
        case 2  % code2
            set(tbox,'string',1)
             !notepad adder.v
        case 3  % code3
          set(tbox,'string',2)
           !notepad Decoder.v
        case 4  % code4
           set(tbox,'string',3)
            !notepad down_counter.v
        case 5  % code5
            set(tbox,'string',4)
             !notepad encoder.v
        case 6  % code6
           set(tbox,'string',5)
            !notepad jkff.v
        case 7  % code7
            set(tbox,'string',6)
             !notepad magnitude_comparator.v
        case 8  % code8
           set(tbox,'string',7)
            !notepad multiplier.v
         case 9  % code9
           set(tbox,'string',8)
            !notepad NegativeDFF.v
         case 10  % code10
           set(tbox,'string',9)
            !notepad positivedff.v
         case 11  % code11
           set(tbox,'string',10)
            !notepad Subtractor.v
         case 12  % code12
           set(tbox,'string',11)
            !notepad tff.v
         case 13  % code13
           set(tbox,'string',12)
            !notepad upcounter.v
         case 14  % code14
           set(tbox,'string',13)
%             !notepad dualportram.v 
%             !notepad dualportramvisualtest.v
            system('notepad.exe dualportram.v &')
            system('notepad.exe dualportramvisualtest.v &')

           case 15  % code15
           set(tbox,'string',14)
            system('notepad.exe paralelltoserial.v &')
            system('notepad.exe parallel_and_serial_top.v &')
            case 16  % code16
           set(tbox,'string',15)
            system('notepad.exe shif_register.v &')
             system('notepad.exe shift_register_visualTest.v &')
            case 17  % code17
           set(tbox,'string',16)
            system('notepad.exe queue.v &')
            system('notepad.exe QUEUETOP.V &')
            case 18  % code18
           set(tbox,'string',17)
            system('notepad.exe  single_port_RAM.v &')
            system('notepad.exe  single_port_RAM_visualTest.v &')
            case 19  % code19
           set(tbox,'string',18)
           system('notepad.exe   ROM_sevenSegment.v &')
           system('notepad.exe   rom7seg_visualtest.v &')
            case 20  % code20
           set(tbox,'string',19)
            system('notepad.exe   shif_register.v  &')
            system('notepad.exe   shift_register_visualTest.v  &')
            case 21  % code21
           set(tbox,'string',20)
            system('notepad.exe    rand_num_generator.v  &')
            system('notepad.exe    rand_num_generator_visualTest.v  &')
        otherwise
            errordlg('Selected case is not on the list.','case error');
   end
        
    end 
%%
     function abc_type_callback(hObject,eventdata)
        
     val = get(abc_type,'Value')-1
     
   switch(val)
        case 1  % code1
            set(tbox,'string',0)
            !notepad always_block.txt
        case 2  % code2
            set(tbox,'string',1)
             !notepad case_statement.txt
        case 3  % code3
          set(tbox,'string',2)
           !notepad casex_statement.txt
        case 4  % code4
           set(tbox,'string',3)
             !notepad casez_statement.txt
        case 5  % code5
            set(tbox,'string',4)
             !notepad conditional_Expression.txt
        case 6  % code6
           set(tbox,'string',5)
            !notepad conditional_operator.txt
        case 7  % code7
            set(tbox,'string',6)
             !notepad for_loop.txt
        case 8  % code8
           set(tbox,'string',7)
            !notepad if_statement.txt
         case 9  % code9
           set(tbox,'string',8)
            !notepad header.txt
                    otherwise
            errordlg('Selected case is not on the list.','case error');
   end
        
    end 
            
%%
    function my_closereq(hObject,eventdata)
        
        delete(gcf);
        clear all;
        
    end 



end