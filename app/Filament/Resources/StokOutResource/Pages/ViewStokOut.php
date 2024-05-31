<?php

namespace App\Filament\Resources\StokOutResource\Pages;

use App\Filament\Resources\StokOutResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;

class ViewStokOut extends ViewRecord
{
    protected static string $resource = StokOutResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\EditAction::make(),
        ];
    }
}
