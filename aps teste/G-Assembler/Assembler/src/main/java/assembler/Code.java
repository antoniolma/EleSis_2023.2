/**
 * Curso: Elementos de Sistemas
 * Arquivo: Code.java
 */

package assembler;

import java.util.List;
import java.util.ArrayList;

/**
 * Traduz mnemônicos da linguagem assembly para códigos binários da arquitetura Z0.
 */
public class Code {

    /**
     * Retorna o código binário do(s) registrador(es) que vão receber o valor da instrução.
     * @param  mnemonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 4 bits) com código em linguagem de máquina para a instrução.
     */
    public static String dest(String[] mnemonic) {
        List<String> l = new ArrayList<>();
        List<Integer> lRegs = new ArrayList<>();
        switch (mnemonic[0]){
            case "movw":
                for (int i = 2; i < mnemonic.length; i++){
                    if (i>=2){
                        String x = mnemonic[i];
                        l.add(x);
                    }
                }
                if (l.size() > 1){
                    for (int i = 0; i < l.size(); i++){
                        if ("%D".equals(l.get(i))){
                            int d = 10;
                            lRegs.add(d);
                        }
                        if ("%A".equals(l.get(i))){
                            int a = 1;
                            lRegs.add(a);
                        }
                        if ("(%A)".equals(l.get(i))){
                            int rA = 100;
                            lRegs.add(rA);
                        }
                    }
                    int soma = 0;
                    for (int i = 0; i < lRegs.size(); i++){
                        soma += lRegs.get(i);
                    }
                    String bin = Integer.toString(soma);
                    int sub = (4 - bin.length());
                    while (sub > 0){
                        bin = '0' + bin;
                        sub -=1;
                    }
                    return bin;
                }

                else{
                    int soma = 0;
                    for (int i = 0; i < l.size(); i++){
                        if ("%D".equals(l.get(i))){
                            int d = 10;
                            soma += d;
                        }
                        if ("%A".equals(l.get(i))){
                            int a = 1;
                            soma += a;
                        }
                        if ("(%A)".equals(l.get(i))){
                            int rA = 100;
                            soma += rA;
                        }
                    }
                    String bin = Integer.toString(soma);
                    int sub = (4 - bin.length());
                    while (sub > 0){
                        bin = '0' + bin;
                        sub -=1;
                    }
                    return bin;
                }

            case "andw":
            case "addw":
            case "subw":
            case "rsubw":
            case "orw":
                for (int i = 3; i < mnemonic.length; i++){
                    if (i>=2){
                        String x = mnemonic[i];
                        l.add(x);
                    }
                }
                if (l.size() > 1){
                    for (int i = 0; i < l.size(); i++){
                        if ("%D".equals(l.get(i))){
                            int d = 10;
                            lRegs.add(d);
                        }
                        if ("%A".equals(l.get(i))){
                            int a = 1;
                            lRegs.add(a);
                        }
                        if ("(%A)".equals(l.get(i))){
                            int rA = 100;
                            lRegs.add(rA);
                        }
                    }
                    int soma = 0;
                    for (int i = 0; i < lRegs.size(); i++){
                        soma += lRegs.get(i);
                    }
                    String bin = Integer.toString(soma);
                    int sub = (4 - bin.length());
                    while (sub > 0){
                        bin = '0' + bin;
                        sub -=1;
                    }
                    return bin;
                }

                else{
                    int soma = 0;
                    for (int i = 0; i < l.size(); i++){
                        if ("%D".equals(l.get(i))){
                            int d = 10;
                            soma += d;
                        }
                        if ("%A".equals(l.get(i))){
                            int a = 1;
                            soma += a;
                        }
                        if ("(%A)".equals(l.get(i))){
                            int rA = 100;
                            soma += rA;
                        }
                    }
                    String bin = Integer.toString(soma);
                    int sub = (4 - bin.length());
                    while (sub > 0){
                        bin = '0' + bin;
                        sub -=1;
                    }
                    return bin;
                }

            case "incw":
            case "decw":
            case "notw":
            case "negw":
                for (int i = 1; i < mnemonic.length; i++){
                    if (i>=1){
                        String x = mnemonic[i];
                        l.add(x);
                    }
                }
                if (l.size() > 1){
                    for (int i = 0; i < l.size(); i++){
                        if ("%D".equals(l.get(i))){
                            int d = 10;
                            lRegs.add(d);
                        }
                        if ("%A".equals(l.get(i))){
                            int a = 1;
                            lRegs.add(a);
                        }
                        if ("(%A)".equals(l.get(i))){
                            int rA = 100;
                            lRegs.add(rA);
                        }
                    }
                    int soma = 0;
                    for (int i = 0; i < lRegs.size(); i++){
                        soma += lRegs.get(i);
                    }
                    String bin = Integer.toString(soma);
                    int sub = (4 - bin.length());
                    while (sub > 0){
                        bin = '0' + bin;
                        sub -=1;
                    }
                    return bin;
                }

                else{
                    int soma = 0;
                    for (int i = 0; i < l.size(); i++){
                        if ("%D".equals(l.get(i))){
                            int d = 10;
                            soma += d;
                        }
                        if ("%A".equals(l.get(i))){
                            int a = 1;
                            soma += a;
                        }
                        if ("(%A)".equals(l.get(i))){
                            int rA = 100;
                            soma += rA;
                        }
                    }
                String bin = Integer.toString(soma);
                int sub = (4 - bin.length());
                while (sub > 0){
                    bin = '0' + bin;
                    sub -=1;
                }
                return bin;
                }
        }
    	return "0000";
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public static String comp(String[] mnemnonic) {
        String op = mnemnonic[0];

        if (op.equals("nop") || mnemnonic.length == 1) {
            return "000001100";
        }

        String output = "00";
        boolean flag = false;
        String r0 = "";
        String origin = mnemnonic[1];
        String calc = "";

        if (origin.equals("(%A)")) {
            flag = true;
            r0 = "1";
        } else {
            flag = false;
            r0 = "0";
        }

        if (op.equals("movw")) {
            if (origin.equals("%A") || origin.equals("(%A)")) {
                calc = "110000";
            } else if (origin.equals("%D")) {
                calc = "001100";
            } else if (origin.equals("$-1")) {
                calc = "111010";
            } else if (origin.equals("$0")) {
                calc = "101010";
            } else if (origin.equals("$1")) {
                calc = "111111";
            }
        } else if (op.equals("addw")) {
            String a = mnemnonic[1];
            String b = mnemnonic[2];
            String destiny = mnemnonic[3];

            if (a.equals("(%A)") || b.equals("(%A)")) {
                flag = true;
                r0 = "1";
            } else {
                flag = false;
                r0 = "0";
            }

            if (!flag) {
                if ((a.equals("%D") && b.equals("%A")) || (a.equals("%A") && b.equals("%D"))) {
                    calc = "000010";
                } else if ((a.equals("$1") && b.equals("%A")) || (a.equals("%A") && b.equals("$1"))) {
                    calc = "110111";
                } else {
                    calc = "011111";
                }
            } else {
                if ((a.equals("%D") && b.equals("(%A)")) || (a.equals("(%A)") && b.equals("%D"))) {
                    calc = "000010";
                } else if ((a.equals("$1") && b.equals("(%A)")) || (a.equals("(%A)") && b.equals("$1"))) {
                    calc = "110111";
                }
            }
        } else if (op.equals("incw")) {
            String destiny = mnemnonic[1];

            if (origin.equals("(%A)")) {
                flag = true;
                r0 = "1";
            } else {
                flag = false;
                r0 = "0";
            }

            if (!flag) {
                if (destiny.equals("%D")) {
                    calc = "011111";
                } else {
                    calc = "110111";
                }
            } else {
                calc = "110111";
            }
        } else if (op.equals("subw")) {
            String a = mnemnonic[1];
            String b = mnemnonic[2];

            if (a.equals("(%A)") || b.equals("(%A)")) {
                flag = true;
                r0 = "1";
            } else {
                flag = false;
                r0 = "0";
            }

            if (!flag) {
                if (a.equals("%D") && b.equals("%A")) {
                    calc = "010011";
                } else if (a.equals("%A") && b.equals("%D")) {
                    calc = "000111";
                }
            } else {
                if (a.equals("%D") && b.equals("(%A)")) {
                    calc = "010011";
                } else if (a.equals("(%A)") && b.equals("%D")) {
                    calc = "000111";
                } else if ((a.equals("(%A)") && b.equals("$1")) || (b.equals("(%A)") && a.equals("$1"))) {
                    calc = "110010";
                }
            }
        } else if (op.equals("rsubw")) {
            String b = mnemnonic[1];
            String a = mnemnonic[2];

            if (a.equals("(%A)") || b.equals("(%A)")) {
                flag = true;
                r0 = "1";
            } else {
                flag = false;
                r0 = "0";
            }

            if (!flag) {
                if (a.equals("%D") && b.equals("%A")) {
                    calc = "010011";
                } else if (a.equals("%A") && b.equals("%D")) {
                    calc = "000111";
                }
            } else {
                if (a.equals("%D") && b.equals("(%A)")) {
                    calc = "010011";
                } else if (a.equals("(%A)") && b.equals("%D")) {
                    calc = "000111";
                }
            }
        } else if (op.equals("decw")) {
            String destiny = origin;

            if (origin.equals("(%A)")) {
                flag = true;
                r0 = "1";
            } else {
                flag = false;
                r0 = "0";
            }

            if (!flag) {
                if (destiny.equals("%D")) {
                    calc = "001110";
                } else {
                    calc = "110010";
                }
            } else {
                calc = "110111";
            }
        } else if (op.equals("notw")) {
            String symbol = origin;

            if (origin.equals("(%A)")) {
                flag = true;
                r0 = "1";
            } else {
                flag = false;
                r0 = "0";
            }

            if (symbol.equals("%A") || symbol.equals("(%A)")) {
                calc = "110001";
            } else if (symbol.equals("%D")) {
                calc = "001101";
            }
        } else if (op.equals("negw")) {
            String symbol = origin;

            if (origin.equals("(%A)")) {
                flag = true;
                r0 = "1";
            } else {
                flag = false;
                r0 = "0";
            }

            if (symbol.equals("%A") || symbol.equals("(%A)")) {
                calc = "110011";
            } else if (symbol.equals("%D")) {
                calc = "001111";
            }
        } else if (op.equals("andw")) {
            String a = mnemnonic[1];
            String b = mnemnonic[2];
            String destiny = mnemnonic[3];

            if (a.equals("(%A)") || b.equals("(%A)")) {
                flag = true;
                r0 = "1";
            } else {
                flag = false;
                r0 = "0";
            }

            if (!flag) {
                if ((a.equals("%D") && b.equals("%A")) || (a.equals("%A") && b.equals("%D"))) {
                    calc = "000000";
                }
            } else {
                if ((a.equals("%D") && b.equals("(%A)")) || (a.equals("(%A)") && b.equals("%D"))) {
                    calc = "000000";
                }
            }
        } else if (op.equals("orw")) {
            String a = mnemnonic[1];
            String b = mnemnonic[2];
            String destiny = mnemnonic[3];
            if (a.equals("(%A)") || b.equals("(%A)")) {
                flag = true;
                r0 = "1";
            } else {
                flag = false;
                r0 = "0";
            }

            if (!flag) {
                if ((a.equals("%D") && b.equals("%A")) || (a.equals("%A") && b.equals("%D"))) {
                    calc = "010101";
                }
            } else {
                if ((a.equals("%D") && b.equals("(%A)")) || (a.equals("(%A)") && b.equals("%D"))) {
                    calc = "010101";
                }
            }
        }

        output = output + r0 + calc;
        return output;
    }


    /**
     * Retorna o código binário do mnemônico para realizar uma operação de jump (salto).
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 3 bits) com código em linguagem de máquina para a instrução.
     */
    public static String jump(String[] mnemnonic) {
        switch (mnemnonic[0]) {
            case "jmp":
                return "111";
            case "jl":
                return "100";
            case "jle":
                return "110";
            case "jg":
                return "001";
            case "jge":
                return "011";
            case "je":
                return "010";
            case "jne":
                return "101";
            default:
                return "000";
        }
    }

    /**
     * Retorna o código binário de um valor decimal armazenado numa String.
     * @param  symbol valor numérico decimal armazenado em uma String.
     * @return Valor em binário (String de 15 bits) representado com 0s e 1s.
     */
    public static String toBinary(String symbol) {
        int num = Integer.parseInt(symbol);
        String bin = Integer.toBinaryString(num);
        int falta = 16 - bin.length();
        while (falta > 0){
            bin = '0' + bin;
            falta -=1;
        }
        if ((num > 65535) || (num < 0)){
            throw new IndexOutOfBoundsException("Índice inválido");
        }
        return bin;
    }
}
