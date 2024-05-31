<?php

namespace App\Filament\Resources\StokInResource\Pages;

use App\Filament\Resources\StokInResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;

class ViewStokIn extends ViewRecord
{
    protected static string $resource = StokInResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\EditAction::make(),
        ];
    }
}
