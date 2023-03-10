-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity nms_insertion_sort_Pipeline_LOOP_SORT_MAIN_J is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    zext_ln53 : IN STD_LOGIC_VECTOR (2 downto 0);
    class_preds_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    class_preds_ce0 : OUT STD_LOGIC;
    class_preds_we0 : OUT STD_LOGIC;
    class_preds_d0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    class_preds_q0 : IN STD_LOGIC_VECTOR (4 downto 0);
    bboxes_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    bboxes_ce0 : OUT STD_LOGIC;
    bboxes_we0 : OUT STD_LOGIC;
    bboxes_d0 : OUT STD_LOGIC_VECTOR (30 downto 0);
    bboxes_q0 : IN STD_LOGIC_VECTOR (30 downto 0);
    bboxes_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    bboxes_ce1 : OUT STD_LOGIC;
    bboxes_we1 : OUT STD_LOGIC;
    bboxes_d1 : OUT STD_LOGIC_VECTOR (30 downto 0);
    bboxes_q1 : IN STD_LOGIC_VECTOR (30 downto 0);
    bbox_V : IN STD_LOGIC_VECTOR (30 downto 0);
    bbox_V_1 : IN STD_LOGIC_VECTOR (30 downto 0);
    bbox_V_2 : IN STD_LOGIC_VECTOR (30 downto 0);
    bbox_V_3 : IN STD_LOGIC_VECTOR (30 downto 0);
    bbox_V_4 : IN STD_LOGIC_VECTOR (30 downto 0);
    class_pred : IN STD_LOGIC_VECTOR (4 downto 0);
    zext_ln65_out : OUT STD_LOGIC_VECTOR (3 downto 0);
    zext_ln65_out_ap_vld : OUT STD_LOGIC;
    zext_ln65_1_out : OUT STD_LOGIC_VECTOR (5 downto 0);
    zext_ln65_1_out_ap_vld : OUT STD_LOGIC;
    zext_ln66_out : OUT STD_LOGIC_VECTOR (5 downto 0);
    zext_ln66_out_ap_vld : OUT STD_LOGIC;
    zext_ln67_out : OUT STD_LOGIC_VECTOR (5 downto 0);
    zext_ln67_out_ap_vld : OUT STD_LOGIC;
    zext_ln68_out : OUT STD_LOGIC_VECTOR (5 downto 0);
    zext_ln68_out_ap_vld : OUT STD_LOGIC;
    zext_ln69_out : OUT STD_LOGIC_VECTOR (5 downto 0);
    zext_ln69_out_ap_vld : OUT STD_LOGIC;
    ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of nms_insertion_sort_Pipeline_LOOP_SORT_MAIN_J is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (11 downto 0) := "000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (11 downto 0) := "000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (11 downto 0) := "000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (11 downto 0) := "000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (11 downto 0) := "000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (11 downto 0) := "000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (11 downto 0) := "000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (11 downto 0) := "001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (11 downto 0) := "010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (11 downto 0) := "100000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_4 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000100";
    constant ap_const_lv64_3 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000011";
    constant ap_const_lv64_2 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000010";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv6_5 : STD_LOGIC_VECTOR (5 downto 0) := "000101";
    constant ap_const_lv6_6 : STD_LOGIC_VECTOR (5 downto 0) := "000110";
    constant ap_const_lv6_7 : STD_LOGIC_VECTOR (5 downto 0) := "000111";
    constant ap_const_lv6_8 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_const_lv6_9 : STD_LOGIC_VECTOR (5 downto 0) := "001001";
    constant ap_const_lv6_2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_const_lv6_3 : STD_LOGIC_VECTOR (5 downto 0) := "000011";
    constant ap_const_lv6_4 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_const_lv64_FFFFFFFFFFFFFFFF : STD_LOGIC_VECTOR (63 downto 0) := "1111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal reg_342 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_reg_595 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1695_reg_632 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal reg_348 : STD_LOGIC_VECTOR (30 downto 0);
    signal j_3_reg_563 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_fu_366_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_fu_374_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal empty_reg_599 : STD_LOGIC_VECTOR (5 downto 0);
    signal shl_ln4_fu_382_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal shl_ln4_reg_604 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln64_fu_390_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln64_reg_609 : STD_LOGIC_VECTOR (5 downto 0);
    signal bboxes_addr_8_reg_621 : STD_LOGIC_VECTOR (5 downto 0);
    signal bboxes_load_reg_627 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln1695_fu_401_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln65_fu_416_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln65_reg_636 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln65_1_fu_420_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln65_1_reg_641 : STD_LOGIC_VECTOR (5 downto 0);
    signal bboxes_addr_9_reg_646 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln66_fu_430_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln66_reg_651 : STD_LOGIC_VECTOR (5 downto 0);
    signal bboxes_addr_10_reg_656 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln67_fu_440_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln67_reg_661 : STD_LOGIC_VECTOR (5 downto 0);
    signal bboxes_addr_11_reg_666 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln68_fu_450_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln68_reg_671 : STD_LOGIC_VECTOR (5 downto 0);
    signal bboxes_addr_12_reg_676 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln69_fu_460_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln69_reg_681 : STD_LOGIC_VECTOR (5 downto 0);
    signal bboxes_addr_13_reg_686 : STD_LOGIC_VECTOR (5 downto 0);
    signal class_preds_addr_1_reg_691 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln71_fu_510_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln71_reg_721 : STD_LOGIC_VECTOR (0 downto 0);
    signal UnifiedRetVal_reg_329 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal zext_ln1695_fu_396_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln65_1_fu_425_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln66_fu_435_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln67_fu_445_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln68_fu_455_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln69_fu_465_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln65_fu_411_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln66_1_fu_475_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln67_1_fu_485_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln68_1_fu_495_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln69_1_fu_505_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_fu_96 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln62_fu_515_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln53_cast_fu_354_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal trunc_ln64_fu_378_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln65_fu_406_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln66_1_fu_470_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln67_1_fu_480_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln68_1_fu_490_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln69_1_fu_500_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal ap_ST_fsm_state9_blk : STD_LOGIC;
    signal ap_ST_fsm_state10_blk : STD_LOGIC;
    signal ap_ST_fsm_state11_blk : STD_LOGIC;
    signal ap_ST_fsm_state12_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv1_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
                    ap_return_preg <= UnifiedRetVal_reg_329;
                end if; 
            end if;
        end if;
    end process;


    UnifiedRetVal_reg_329_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                UnifiedRetVal_reg_329 <= ap_const_lv1_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
                UnifiedRetVal_reg_329 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    j_fu_96_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                j_fu_96 <= zext_ln53_cast_fu_354_p1;
            elsif (((icmp_ln1695_reg_632 = ap_const_lv1_1) and (tmp_reg_595 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
                j_fu_96 <= add_ln62_fu_515_p2;
            end if; 
        end if;
    end process;

    reg_342_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1695_reg_632 = ap_const_lv1_1) and (tmp_reg_595 = ap_const_lv1_0))) then
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    reg_342 <= bboxes_q0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    reg_342 <= bboxes_q1;
                end if;
            end if; 
        end if;
    end process;

    reg_348_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1695_reg_632 = ap_const_lv1_1) and (tmp_reg_595 = ap_const_lv1_0))) then
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    reg_348 <= bboxes_q1;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    reg_348 <= bboxes_q0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_366_p3 = ap_const_lv1_0))) then
                add_ln64_reg_609 <= add_ln64_fu_390_p2;
                bboxes_addr_8_reg_621 <= zext_ln1695_fu_396_p1(6 - 1 downto 0);
                empty_reg_599 <= empty_fu_374_p1;
                    shl_ln4_reg_604(5 downto 2) <= shl_ln4_fu_382_p3(5 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_reg_595 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                add_ln65_1_reg_641 <= add_ln65_1_fu_420_p2;
                add_ln66_reg_651 <= add_ln66_fu_430_p2;
                add_ln67_reg_661 <= add_ln67_fu_440_p2;
                add_ln68_reg_671 <= add_ln68_fu_450_p2;
                add_ln69_reg_681 <= add_ln69_fu_460_p2;
                bboxes_addr_10_reg_656 <= zext_ln66_fu_435_p1(6 - 1 downto 0);
                bboxes_addr_11_reg_666 <= zext_ln67_fu_445_p1(6 - 1 downto 0);
                bboxes_addr_12_reg_676 <= zext_ln68_fu_455_p1(6 - 1 downto 0);
                bboxes_addr_13_reg_686 <= zext_ln69_fu_465_p1(6 - 1 downto 0);
                bboxes_addr_9_reg_646 <= zext_ln65_1_fu_425_p1(6 - 1 downto 0);
                bboxes_load_reg_627 <= bboxes_q0;
                class_preds_addr_1_reg_691 <= zext_ln65_fu_411_p1(4 - 1 downto 0);
                icmp_ln1695_reg_632 <= icmp_ln1695_fu_401_p2;
                trunc_ln65_reg_636 <= trunc_ln65_fu_416_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1695_reg_632 = ap_const_lv1_1) and (tmp_reg_595 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                icmp_ln71_reg_721 <= icmp_ln71_fu_510_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                j_3_reg_563 <= j_fu_96;
                tmp_reg_595 <= j_fu_96(63 downto 63);
            end if;
        end if;
    end process;
    shl_ln4_reg_604(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, tmp_reg_595, ap_CS_fsm_state3, icmp_ln1695_fu_401_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((tmp_reg_595 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln1695_fu_401_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                elsif (((tmp_reg_595 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state11;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXX";
        end case;
    end process;
    add_ln62_fu_515_p2 <= std_logic_vector(unsigned(j_3_reg_563) + unsigned(ap_const_lv64_FFFFFFFFFFFFFFFF));
    add_ln64_fu_390_p2 <= std_logic_vector(unsigned(shl_ln4_fu_382_p3) + unsigned(empty_fu_374_p1));
    add_ln65_1_fu_420_p2 <= std_logic_vector(unsigned(add_ln64_reg_609) + unsigned(ap_const_lv6_5));
    add_ln65_fu_406_p2 <= std_logic_vector(unsigned(empty_reg_599) + unsigned(ap_const_lv6_1));
    add_ln66_1_fu_470_p2 <= std_logic_vector(unsigned(add_ln65_fu_406_p2) + unsigned(shl_ln4_reg_604));
    add_ln66_fu_430_p2 <= std_logic_vector(unsigned(add_ln64_reg_609) + unsigned(ap_const_lv6_6));
    add_ln67_1_fu_480_p2 <= std_logic_vector(unsigned(add_ln64_reg_609) + unsigned(ap_const_lv6_2));
    add_ln67_fu_440_p2 <= std_logic_vector(unsigned(add_ln64_reg_609) + unsigned(ap_const_lv6_7));
    add_ln68_1_fu_490_p2 <= std_logic_vector(unsigned(add_ln64_reg_609) + unsigned(ap_const_lv6_3));
    add_ln68_fu_450_p2 <= std_logic_vector(unsigned(add_ln64_reg_609) + unsigned(ap_const_lv6_8));
    add_ln69_1_fu_500_p2 <= std_logic_vector(unsigned(add_ln64_reg_609) + unsigned(ap_const_lv6_4));
    add_ln69_fu_460_p2 <= std_logic_vector(unsigned(add_ln64_reg_609) + unsigned(ap_const_lv6_9));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);
    ap_ST_fsm_state10_blk <= ap_const_logic_0;
    ap_ST_fsm_state11_blk <= ap_const_logic_0;
    ap_ST_fsm_state12_blk <= ap_const_logic_0;

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;
    ap_ST_fsm_state6_blk <= ap_const_logic_0;
    ap_ST_fsm_state7_blk <= ap_const_logic_0;
    ap_ST_fsm_state8_blk <= ap_const_logic_0;
    ap_ST_fsm_state9_blk <= ap_const_logic_0;

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(UnifiedRetVal_reg_329, ap_return_preg, ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            ap_return <= UnifiedRetVal_reg_329;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;


    bboxes_address0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state2, ap_CS_fsm_state3, bboxes_addr_9_reg_646, bboxes_addr_10_reg_656, bboxes_addr_12_reg_676, zext_ln1695_fu_396_p1, zext_ln67_1_fu_485_p1, zext_ln68_1_fu_495_p1, ap_CS_fsm_state9, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            bboxes_address0 <= ap_const_lv64_3(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            bboxes_address0 <= ap_const_lv64_1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            bboxes_address0 <= bboxes_addr_9_reg_646;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            bboxes_address0 <= bboxes_addr_12_reg_676;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            bboxes_address0 <= bboxes_addr_10_reg_656;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            bboxes_address0 <= zext_ln68_1_fu_495_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            bboxes_address0 <= zext_ln67_1_fu_485_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            bboxes_address0 <= zext_ln1695_fu_396_p1(6 - 1 downto 0);
        else 
            bboxes_address0 <= "XXXXXX";
        end if; 
    end process;


    bboxes_address1_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, bboxes_addr_8_reg_621, ap_CS_fsm_state3, bboxes_addr_11_reg_666, bboxes_addr_13_reg_686, zext_ln66_1_fu_475_p1, zext_ln69_1_fu_505_p1, ap_CS_fsm_state9, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            bboxes_address1 <= ap_const_lv64_4(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            bboxes_address1 <= ap_const_lv64_2(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            bboxes_address1 <= bboxes_addr_8_reg_621;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            bboxes_address1 <= bboxes_addr_13_reg_686;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            bboxes_address1 <= bboxes_addr_11_reg_666;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            bboxes_address1 <= zext_ln69_1_fu_505_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            bboxes_address1 <= zext_ln66_1_fu_475_p1(6 - 1 downto 0);
        else 
            bboxes_address1 <= "XXXXXX";
        end if; 
    end process;


    bboxes_ce0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state9, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            bboxes_ce0 <= ap_const_logic_1;
        else 
            bboxes_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    bboxes_ce1_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state3, ap_CS_fsm_state9, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            bboxes_ce1 <= ap_const_logic_1;
        else 
            bboxes_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    bboxes_d0_assign_proc : process(bbox_V_1, bbox_V_3, reg_342, ap_CS_fsm_state5, bboxes_load_reg_627, ap_CS_fsm_state9, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            bboxes_d0 <= bbox_V_3;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            bboxes_d0 <= bbox_V_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            bboxes_d0 <= bboxes_load_reg_627;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            bboxes_d0 <= reg_342;
        else 
            bboxes_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    bboxes_d1_assign_proc : process(bbox_V, bbox_V_2, bbox_V_4, ap_CS_fsm_state5, reg_348, ap_CS_fsm_state9, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            bboxes_d1 <= bbox_V_4;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            bboxes_d1 <= bbox_V_2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            bboxes_d1 <= bbox_V;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            bboxes_d1 <= reg_348;
        else 
            bboxes_d1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    bboxes_we0_assign_proc : process(tmp_reg_595, icmp_ln1695_reg_632, ap_CS_fsm_state5, icmp_ln71_reg_721, ap_CS_fsm_state9, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8)
    begin
        if ((((icmp_ln1695_reg_632 = ap_const_lv1_1) and (tmp_reg_595 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((icmp_ln1695_reg_632 = ap_const_lv1_1) and (tmp_reg_595 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln71_reg_721 = ap_const_lv1_1)) or ((icmp_ln1695_reg_632 = ap_const_lv1_1) and (tmp_reg_595 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7)) or ((icmp_ln1695_reg_632 = ap_const_lv1_1) and (tmp_reg_595 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6)) or ((icmp_ln1695_reg_632 = ap_const_lv1_1) and (tmp_reg_595 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state9) and (icmp_ln71_reg_721 = ap_const_lv1_1)))) then 
            bboxes_we0 <= ap_const_logic_1;
        else 
            bboxes_we0 <= ap_const_logic_0;
        end if; 
    end process;


    bboxes_we1_assign_proc : process(tmp_reg_595, icmp_ln1695_reg_632, ap_CS_fsm_state5, icmp_ln71_reg_721, ap_CS_fsm_state9, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8)
    begin
        if ((((icmp_ln1695_reg_632 = ap_const_lv1_1) and (tmp_reg_595 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((icmp_ln1695_reg_632 = ap_const_lv1_1) and (tmp_reg_595 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln71_reg_721 = ap_const_lv1_1)) or ((icmp_ln1695_reg_632 = ap_const_lv1_1) and (tmp_reg_595 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln71_reg_721 = ap_const_lv1_1)) or ((icmp_ln1695_reg_632 = ap_const_lv1_1) and (tmp_reg_595 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6)) or ((icmp_ln1695_reg_632 = ap_const_lv1_1) and (tmp_reg_595 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state9) and (icmp_ln71_reg_721 = ap_const_lv1_1)))) then 
            bboxes_we1 <= ap_const_logic_1;
        else 
            bboxes_we1 <= ap_const_logic_0;
        end if; 
    end process;


    class_preds_address0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, j_3_reg_563, ap_CS_fsm_state3, class_preds_addr_1_reg_691)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            class_preds_address0 <= ap_const_lv64_0(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            class_preds_address0 <= class_preds_addr_1_reg_691;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            class_preds_address0 <= j_3_reg_563(4 - 1 downto 0);
        else 
            class_preds_address0 <= "XXXX";
        end if; 
    end process;


    class_preds_ce0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            class_preds_ce0 <= ap_const_logic_1;
        else 
            class_preds_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    class_preds_d0_assign_proc : process(class_preds_q0, class_pred, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            class_preds_d0 <= class_pred;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            class_preds_d0 <= class_preds_q0;
        else 
            class_preds_d0 <= "XXXXX";
        end if; 
    end process;


    class_preds_we0_assign_proc : process(ap_CS_fsm_state4, tmp_reg_595, icmp_ln1695_reg_632, ap_CS_fsm_state5, icmp_ln71_fu_510_p2)
    begin
        if ((((icmp_ln1695_reg_632 = ap_const_lv1_1) and (tmp_reg_595 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln71_fu_510_p2 = ap_const_lv1_1)) or ((icmp_ln1695_reg_632 = ap_const_lv1_1) and (tmp_reg_595 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            class_preds_we0 <= ap_const_logic_1;
        else 
            class_preds_we0 <= ap_const_logic_0;
        end if; 
    end process;

    empty_fu_374_p1 <= j_fu_96(6 - 1 downto 0);
    icmp_ln1695_fu_401_p2 <= "1" when (signed(bbox_V) > signed(bboxes_q0)) else "0";
    icmp_ln71_fu_510_p2 <= "1" when (j_3_reg_563 = ap_const_lv64_0) else "0";
    shl_ln4_fu_382_p3 <= (trunc_ln64_fu_378_p1 & ap_const_lv2_0);
    tmp_fu_366_p3 <= j_fu_96(63 downto 63);
    trunc_ln64_fu_378_p1 <= j_fu_96(4 - 1 downto 0);
    trunc_ln65_fu_416_p1 <= add_ln65_fu_406_p2(4 - 1 downto 0);
    zext_ln1695_fu_396_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln64_fu_390_p2),64));
    zext_ln53_cast_fu_354_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln53),64));
    zext_ln65_1_fu_425_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln65_1_fu_420_p2),64));
    zext_ln65_1_out <= add_ln65_1_reg_641;

    zext_ln65_1_out_ap_vld_assign_proc : process(ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            zext_ln65_1_out_ap_vld <= ap_const_logic_1;
        else 
            zext_ln65_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln65_fu_411_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln65_fu_406_p2),64));
    zext_ln65_out <= trunc_ln65_reg_636;

    zext_ln65_out_ap_vld_assign_proc : process(ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            zext_ln65_out_ap_vld <= ap_const_logic_1;
        else 
            zext_ln65_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln66_1_fu_475_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln66_1_fu_470_p2),64));
    zext_ln66_fu_435_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln66_fu_430_p2),64));
    zext_ln66_out <= add_ln66_reg_651;

    zext_ln66_out_ap_vld_assign_proc : process(ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            zext_ln66_out_ap_vld <= ap_const_logic_1;
        else 
            zext_ln66_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln67_1_fu_485_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln67_1_fu_480_p2),64));
    zext_ln67_fu_445_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln67_fu_440_p2),64));
    zext_ln67_out <= add_ln67_reg_661;

    zext_ln67_out_ap_vld_assign_proc : process(ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            zext_ln67_out_ap_vld <= ap_const_logic_1;
        else 
            zext_ln67_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln68_1_fu_495_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln68_1_fu_490_p2),64));
    zext_ln68_fu_455_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln68_fu_450_p2),64));
    zext_ln68_out <= add_ln68_reg_671;

    zext_ln68_out_ap_vld_assign_proc : process(ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            zext_ln68_out_ap_vld <= ap_const_logic_1;
        else 
            zext_ln68_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln69_1_fu_505_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln69_1_fu_500_p2),64));
    zext_ln69_fu_465_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln69_fu_460_p2),64));
    zext_ln69_out <= add_ln69_reg_681;

    zext_ln69_out_ap_vld_assign_proc : process(ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            zext_ln69_out_ap_vld <= ap_const_logic_1;
        else 
            zext_ln69_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
