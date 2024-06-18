import {Card, CardHeader, CardTitle, CardContent} from '@/components/ui/card';
import {Button} from '@/components/ui/button';
import {Container} from '@/components/ui/container';
import {Text, Title} from '@/components/ui/text';

export default function HomePage() {
    return (
        <div>
            <header className="bg-primary text-primary-foreground p-4 shadow-lg">
                <Container>
                    <div className="text-2xl font-bold">Rivync</div>
                </Container>
            </header>

            <section className="hero bg-background py-20 text-center">
                <Container>
                    <Title className="text-4xl font-extrabold mb-4">Optimieren Sie Ihr Teammanagement</Title>
                    <Text className="text-lg mb-8 text-muted-foreground">Die umfassende Lösung für Trainer, Spieler und
                        Eltern, um die Organisation und Kommunikation in Ihrem Team zu verbessern.</Text>
                    <Button
                        className="bg-primary text-primary-foreground py-2 px-4 rounded-lg shadow-md hover:bg-primary-hover">App
                        jetzt herunterladen</Button>
                </Container>
            </section>

            <section id="features" className="py-20 bg-gray-100">
                <Container>
                    <Title className="text-3xl mb-8 text-center">Hauptfunktionen</Title>
                    <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                        <Card>
                            <CardHeader>
                                <CardTitle>Benutzerverwaltung</CardTitle>
                            </CardHeader>
                            <CardContent>Erstellen und verwalten Sie detaillierte Profile für Trainer, Spieler und
                                Eltern, um eine bessere Teamkoordination zu gewährleisten.</CardContent>
                        </Card>
                        <Card>
                            <CardHeader>
                                <CardTitle>Teamorganisation</CardTitle>
                            </CardHeader>
                            <CardContent>Fügen Sie Mitglieder hinzu oder entfernen Sie sie, und organisieren Sie Ihr
                                Team mit Leichtigkeit.</CardContent>
                        </Card>
                        <Card>
                            <CardHeader>
                                <CardTitle>Eventplanung</CardTitle>
                            </CardHeader>
                            <CardContent>Planen Sie Trainingseinheiten, Spiele und Turniere mit automatisierten
                                Erinnerungen und Benachrichtigungen.</CardContent>
                        </Card>
                        <Card>
                            <CardHeader>
                                <CardTitle>Anwesenheitsverfolgung</CardTitle>
                            </CardHeader>
                            <CardContent>Behalten Sie den Überblick über die Anwesenheit Ihrer Teammitglieder bei
                                verschiedenen Veranstaltungen.</CardContent>
                        </Card>
                        <Card>
                            <CardHeader>
                                <CardTitle>Kommunikationstools</CardTitle>
                            </CardHeader>
                            <CardContent>Nutzen Sie den integrierten Team-Chat und direkte Nachrichten, um in Kontakt zu
                                bleiben.</CardContent>
                        </Card>
                    </div>
                </Container>
            </section>

            <section id="how-it-works" className="py-20 bg-white">
                <Container>
                    <Title className="text-3xl mb-8 text-center">So funktioniert's</Title>
                    <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
                        <Card>
                            <CardHeader>
                                <CardTitle>Schritt 1</CardTitle>
                            </CardHeader>
                            <CardContent>Registrieren Sie sich und erstellen Sie Ihr persönliches Profil.</CardContent>
                        </Card>
                        <Card>
                            <CardHeader>
                                <CardTitle>Schritt 2</CardTitle>
                            </CardHeader>
                            <CardContent>Erstellen Sie Ihr Team und laden Sie Mitglieder ein.</CardContent>
                        </Card>
                        <Card>
                            <CardHeader>
                                <CardTitle>Schritt 3</CardTitle>
                            </CardHeader>
                            <CardContent>Planen und verwalten Sie alle Teamveranstaltungen.</CardContent>
                        </Card>
                        <Card>
                            <CardHeader>
                                <CardTitle>Schritt 4</CardTitle>
                            </CardHeader>
                            <CardContent>Bleiben Sie über die integrierten Kommunikationstools in Kontakt.</CardContent>
                        </Card>
                    </div>
                </Container>
            </section>

            <section className="py-20 bg-primary text-primary-foreground text-center">
                <Container>
                    <Title className="text-3xl mb-4">Fangen Sie noch heute mit Rivync an</Title>
                    <Text className="text-lg mb-8">Verwalten Sie Ihr Team einfach und effizient mit Rivync. Laden Sie
                        die App jetzt herunter!</Text>
                    <Button className="bg-white text-primary py-2 px-4 rounded-lg shadow-md hover:bg-gray-200">App jetzt
                        herunterladen</Button>
                </Container>
            </section>
        </div>
    );
}
