<?php

namespace App\Filament\Resources\StokInResource\Pages;

use App\Filament\Resources\StokInResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListStokIns extends ListRecords
{
    protected static string $resource = StokInResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
