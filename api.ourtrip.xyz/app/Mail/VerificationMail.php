<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class VerificationMail extends Model
{
    use Queueable, SerializesModels;
    public $detail;

    public function __construct($detail) {
        $this->detail = $detail;
    }

    public function build() {
    }
}
