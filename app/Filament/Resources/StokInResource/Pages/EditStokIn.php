<?php

namespace App\Filament\Resources\StokInResource\Pages;

use App\Filament\Resources\StokInResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditStokIn extends EditRecord
{
    protected static string $resource = StokInResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\ViewAction::make(),
            Actions\DeleteAction::make(),
        ];
    }
}
