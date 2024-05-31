<?php

namespace App\Filament\Resources\StokOutResource\Pages;

use App\Filament\Resources\StokOutResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListStokOuts extends ListRecords
{
    protected static string $resource = StokOutResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
