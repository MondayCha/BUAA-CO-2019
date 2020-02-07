#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define INSTR_NOP 0
#define INSTR_ADDU 1
#define INSTR_SUBU 2
#define INSTR_ORI 3
#define INSTR_LW 4
#define INSTR_SW 5
#define INSTR_BEQ 6
#define INSTR_LUI 7
#define INSTR_JAL 8
#define INSTR_JR 9
#define INSTR_J 10

// no JR so far, hard to do

const int maxInstructionCount = 1000;

int instrRatioRand(void){
    int randVal = rand() % 120;
    if(randVal == 0)
        return INSTR_NOP;
    else if(randVal < 14)
        return INSTR_ADDU;
    else if(randVal < 32)
        return INSTR_SUBU;
    else if(randVal < 50)
        return INSTR_ORI;
    else if(randVal < 65)
        return INSTR_LW;
    else if(randVal < 75)
        return INSTR_SW;
    else if(randVal < 90)
        return INSTR_BEQ;
    else if(randVal < 105)
        return INSTR_LUI;
    else if(randVal < 110)
        return INSTR_JAL;
    /* else if(randVal < 115)
        return INSTR_JR; */
    else
        return INSTR_J;
}

// 0 - 3, 31 , 5 registers, more hazard
int rand0Up(void){
    int randVal = rand() % 8;
    if(randVal < 4)
        return 0;
    else if(randVal == 7)
        return 31;
    else
        return randVal - 3;
}

int rand0Down(void){
    int randVal = rand() % 13;
    if(randVal == 0)
        return 0;
    else if(randVal >= 10 && randVal < 13 )
        return 31;
    else
        return (randVal + 2)/3;
}

// Instructions here
void nop(int total){
    printf("L%d: nop\n", total);
}

void three_cal(int total, char * mnemonic){
    int dest = rand0Down();
    int tmp = rand() % 5;
    int src1 = (tmp == 4)?31:tmp;
    tmp = rand() % 5;
    int src2 = (tmp == 4)?31:tmp;
    printf("L%d: %s $%d, $%d, $%d\n", total, mnemonic, dest, src1, src2);
}

void addu(int total){
    three_cal(total, "addu");
}

void subu(int total){
    three_cal(total, "subu");
}

void ori(int total){
    // randMax is 0x7fff
    printf("L%d: ori $%d, $%d, %d\n", total, rand0Down(), rand0Down(), (rand() + rand())%65536);
}

void lui(int total){
    // randMax is 0x7fff
    printf("L%d: lui $%d, %d\n", total, rand0Down(), (rand() + rand())%65536);
}

void lw(int total){
    int rawRand = rand() % 2048;
    int randWord = (rawRand % 2048 < 512) ? 0 : ((rawRand % 2048 >= 1536)?1023: (rawRand - 512));
    int randAddr = randWord << 2;
    printf("L%d: lw $%d, %d($0)\n", total, rand0Down(), randAddr);
}

void sw(int total){
    int rawRand = rand() % 2048;
    int randWord = (rawRand % 2048 < 512) ? 0 : ((rawRand % 2048 >= 1536)?1023: (rawRand - 512));
    int randAddr = randWord << 2;
    printf("L%d: sw $%d, %d($0)\n", total, rand0Down(), randAddr);
}

void beq(int total){
    int randJump = rand() % 64 + 1;
    int label = ((total + randJump) < 999) ? (total + randJump) : 1001;
    printf("L%d: beq $%d, $%d, L%d\n", total, rand0Up(), rand0Up(), label);
}

void jal(int total){
    int randJump = rand() % 64 + 1;
    int label = ((total + randJump) < 999) ? (total + randJump) : 1001;
    printf("L%d: jal L%d\n", total, label);
}

void j(int total){
    int randJump = rand() % 64 + 1;
    int label = ((total + randJump) < 999) ? (total + randJump) : 1001;
    printf("L%d: j L%d\n", total, label);
}


int main(void){
    srand((unsigned)time(NULL));

    int isLastInstrJump = 0;
    int total = 0;

    printf("INTI0: lui $gp, 0\n");
    printf("INTI1: lui $sp, 0\n");
    do {
        switch(instrRatioRand()){
            case INSTR_NOP:
                nop(total);
                isLastInstrJump = 0;
                break;
            case INSTR_ADDU:
                addu(total);
                isLastInstrJump = 0;
                break;
            case INSTR_SUBU:
                subu(total);
                isLastInstrJump = 0;
                break;
            case INSTR_ORI:
                ori(total);
                isLastInstrJump = 0;
                break;
            case INSTR_LW:
                lw(total);
                isLastInstrJump = 0;
                break;
            case INSTR_SW:
                sw(total);
                isLastInstrJump = 0;
                break;
            case INSTR_BEQ:
                if(isLastInstrJump)
                    total--;
                else
                    beq(total);
                    isLastInstrJump = 1;
                break;
            case INSTR_LUI:
                lui(total);
                isLastInstrJump = 0;
                break;
            case INSTR_JAL:
                if(isLastInstrJump)
                    total--;
                else
                    jal(total);
                    isLastInstrJump = 1;
                break;
            case INSTR_J:
                if(isLastInstrJump)
                    total--;
                else
                    j(total);
                    isLastInstrJump = 1;
                break;
        }
        
    } while (total++ < maxInstructionCount);

    printf("L1001: nop\n");
    printf("Exit: nop\n");
}