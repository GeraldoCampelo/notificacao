package com.javanauta.notificacao.infrastructure.exceptions;

public class EmailException extends RuntimeException {

    public EmailException(String messagem) {
        super(messagem);
    }

    public EmailException(String messagem, Throwable throwable) {
        super(messagem, throwable);
    }
}
