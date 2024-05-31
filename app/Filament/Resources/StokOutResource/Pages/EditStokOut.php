<?php

namespace App\Filament\Resources\StokOutResource\Pages;

use App\Filament\Resources\StokOutResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditStokOut extends EditRecord
{
    protected static string $resource = StokOutResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\ViewAction::make(),
            Actions\DeleteAction::make(),
        ];
    }
}
